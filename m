Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FA6D7D8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiiDkf3q4OyqcSo6pDSsofMmIZVKh6Eoa8QxGW43CV0=; b=KspPQ8SSdf3QYL
	BPl3yj0opP9CWVuDA0cLv4FYc3hqtZP8jKPPwBhSxIPshqxgJjz3SIgVUOBLph0fHcDbotBUiFdGF
	5TA79TekZNYPMdtPWhqJiXIka/0Hzbta+fbvCtEN3RGlFkNHF2UGc816i4lyDiC7r01e2rkPjPj5O
	k4cfeLR0N9SSj5dfuTO5eTR0SmAjJkChXxyiJlFbxE2duVAZWLmQLaPa4i5CGW7CPTxRBrzYORDe1
	n02egM8aVhVi0cMF7ubttLqenIM+urnYd7bVcZjyavWsyUmBa9TxBYhlzwxq5R1kQvBC4/+XrB957
	iDXWXMLHhQsPi9C57v/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQYP-00015F-M3; Tue, 15 Oct 2019 17:24:13 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQYF-00013D-2T
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:24:04 +0000
Received: by mail-ot1-f66.google.com with SMTP id o44so17625520ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AMnuJgHGU6R0IzytORO8cFlW8ykU5YUSocCPPL5eBC4=;
 b=DR4FlNqcx4wIe3khlc1FRKQG4kupweqO0741uURVLATYBPqo2VUlRU0XQCRItbJpow
 VbDkW7u0F0C93Rg30FFPj3fQSvjVBiEhgF+YjLBqoF9TrTsMeKbg5KG6kio8Y0cZBPY7
 iIPmRjac9GWyTuTRKlfK08vc+Xjtdt6C0jDZkClzE+dVo/OxP1g20K9iPOru2P8z5j5A
 22ByqLviYoYk/tk1QpdU+KVksEBAO1HnmL2zjv+aaqWCt2XsF+eFGKMvKI3K6STgY/EI
 e+BLRvyXLVejgPblHs6H7Qm5ULWNXztSvlxbLA4ACVOaEpR3iMkJUgN9S1t27K2D9nxS
 BnGw==
X-Gm-Message-State: APjAAAWZBFf7prJLIhkdTWIxDPEnomaulo4jU2z5vXqyqMuP3DM+uHFv
 NzfIcqmf+Oo5PsU46dEIBQ==
X-Google-Smtp-Source: APXvYqxeAQyn2woHyJsNz/1A9Qqotnbqgu/lYixgaEz9AtYG4uiKdx1AbMY3H/CJDkTrB7+S/N/KHQ==
X-Received: by 2002:a05:6830:22ce:: with SMTP id
 q14mr3987927otc.115.1571160242078; 
 Tue, 15 Oct 2019 10:24:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d194sm6658461oib.47.2019.10.15.10.24.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:24:01 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:24:00 -0500
From: Rob Herring <robh@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH 3/3] dt-bindings: usb: generic-ehci: Add "companion" entry
Message-ID: <20191015172400.GA724@bogus>
References: <20191007134410.10337-1-alexandre.torgue@st.com>
 <20191007134410.10337-4-alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007134410.10337-4-alexandre.torgue@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_102403_119660_973B957E 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 15:44:10 +0200, Alexandre Torgue wrote:
> "companion" entry is present in "generic.txt" usb binding file. This commit
> adds it also in generic-ehci yaml binding.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
