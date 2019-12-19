Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C92126E0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 20:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMDL8CLh5AqwMnKstdyQat3LV3PTZ3OcSkR/NfyBsJc=; b=RAtcHLW5CylaDV
	Vd6R43DiX1OWXsC/BSRhgPxs9czbDx0b1CcfuNwbWD5M1JN/g8et1lw4COU598wPyh7j5XhB8+LG6
	lVfhr723i3us5+uW96HxoYMNqt7OztLstaeVUBuE/8ncZsTEvo8gCljS3+Z3iWSY9E+Nbjcok25LK
	3KNgu41Hsd1r1oJxVD1qK6YlzmKBNPF8KA73bXitMtnuXhMmNNqd7I7qohBjLVkXMQoDFMRSq+CX8
	C6lHpZ937UXANCmk9bg/cES/P7cGtIHKz6gJAL3ffG8fX0Ph1DjP48q90EuHYPRCxLkmS/2aeB3oM
	mjmGHUZJIdzoeegytQdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii1Z9-0006dF-Cq; Thu, 19 Dec 2019 19:34:31 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii1Yx-0006cv-1U
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 19:34:20 +0000
Received: by mail-ot1-f66.google.com with SMTP id 66so8520949otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 11:34:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4s0UeefcmQPxDO9I0vP0cU6H8/zBXgxnJhl+iNskVSk=;
 b=XVP+VIPE87zQSrscPzruBe97Ss4cmQlos93MUlkALZWrGX0hNxFz44KhiDZjf8qMKt
 VLEMCNcFGVugsGfkB7yLRbSxGyOetMVt7utZm95MQkv97xDql9naXtgs2P0YLQkn1WFA
 8x41Aa5HLmh4MjGnYDWlUsTokm8JErBA9jrg8dbHksfqhPynSn9ugl861Pi6ob8G1DrL
 pgwpBIBHgwoaQgS72BUCYVTYz4+ReBd2Pum55InynBUo2RT4RuwoAAJhKC7kK/CSkNI3
 Uqv5ZEGgmAX6od2cmfcGzX7C/Jxc2SmXd4dq0oLHVrsiIXrE8NWlUn3pdhEMGh2YNvqM
 rRjA==
X-Gm-Message-State: APjAAAVpq+mI1jlKWg0DdSXSbjaJYOYDjugCjEEJaYFtyig/ls3ZMPCf
 1+mAFmG26E4L+kKviEjiKwtSnNHBRg==
X-Google-Smtp-Source: APXvYqwRRb0TpvCkbAd8DOTvX/AnQt1KbPO4q7/X6jdpiZYbQd+IW8/opQXVYnWiRvA6JuPFH2Fx4g==
X-Received: by 2002:a9d:6251:: with SMTP id i17mr10703698otk.14.1576784058062; 
 Thu, 19 Dec 2019 11:34:18 -0800 (PST)
Received: from localhost ([2607:fb90:20de:fb54:3549:d84c:9720:edb4])
 by smtp.gmail.com with ESMTPSA id 97sm2469562otx.29.2019.12.19.11.34.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 11:34:17 -0800 (PST)
Date: Thu, 19 Dec 2019 13:34:15 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 4/5] dt-bindings: arm: fsl: add Kontron sl28 boards
Message-ID: <20191219193415.GA23458@bogus>
References: <20191209234350.18994-1-michael@walle.cc>
 <20191209234350.18994-5-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209234350.18994-5-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_113419_090440_353E570C 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Yuantian Tang <andy.tang@nxp.com>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 00:43:49 +0100, Michael Walle wrote:
> Add the Kontron SMARC-sAL28 board, its variants and combination with
> carriers.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
