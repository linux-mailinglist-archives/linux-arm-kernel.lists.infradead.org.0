Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E0C1F4566
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szmGMZYEWx6+AlTt42phyaSA5wfZVU4g4RXZLf+j7c8=; b=Y84DPP8rN05JMo
	+Q54Q4cHD+1i6FRHuhhluVkIpqM93WmNJ0V6iLq/sTDGEgyB7hUszxCk+mBFknC+scJ802T0ITsbO
	iwrEiTDxyEku8cbAtqWbAJabC5T7NatiEGtiguoblGWE0lk/jW52Wu1l41UMr6u16tzBe4WKzE/4S
	f/fvhzzfJAUCWGfr4qGZgoWajh/odm0nni9X/+AtGHHFYBAThxi/ZCcnvQdzm27xcQlhbVBpRQm1P
	kQTN8UoQZjmdwtAlQjgJLOXBqXpKi9b1aONseAeVx8EJvfyDs9rakcxnQM0YAnupCgdYjk88Hb7KN
	EzYRlsnTt/tctRa7D1nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiimt-000747-Ra; Tue, 09 Jun 2020 18:15:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiime-000736-Rg; Tue, 09 Jun 2020 18:15:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id p5so22372694wrw.9;
 Tue, 09 Jun 2020 11:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TDeKr1HAesXBQgM+IuvcyLWHrtpuB78uSNiXvj3O+1s=;
 b=ib/0HdtHVozoKsTp2b8sWLvSkHg6ZZk0P2rBq035OwmjNQ9zRgW4In76JkVtl7p2Xq
 J02jkjG7fWRm9n9MbqVGSo22x7mhDbdUGXhYP0ChE0NJDjGt97n/VHEh5B9y9iR/snsx
 EoQ6YuwqfOn3NIBNwGRgj4opCw98aXZ44boJl+iAQcEklNaKPpTGEDuBGPqivYmnFG+n
 1Q6c6F03UdjmL9ZNngHKXx7K1C6h+NWE+oUkiyAJCkTPR2Lm2EbmB/BeVpu22A9AzebZ
 StMVW93S5BNxgJhhi6EU4jqUUKLAxAN3gKD7wncF3ylcaZYppQVcQSIbap0XI0v/W/TM
 hW/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TDeKr1HAesXBQgM+IuvcyLWHrtpuB78uSNiXvj3O+1s=;
 b=BD9ZqRhpHzdzrYS1sBiq8Wv9jh7ErmkuErwzkgMMzQD47dotU4ElmZ31B2SIoFUalk
 Fzjka2rbrAKMBL2GmXPNxw+8DWLjSd0gK2xdcvf9NUfL3dVwu9woqqfE58LHtlVWRtMI
 XmCeOMhep/P5jirL1B+PRDoeMYKve1JAvP1ORdkgxAvVRt4+GKTJT+gPvTxZVFntfYuA
 BzSr2vDnQC+5togv3AWn9tuRn9vuYFanU52FvuwODjVb7u7T+MDMAtVOeNdD5Pnss0RF
 K3cjKkS5ceU3j45O29OgVkyLnDox+eYmO4SwGhln0KViHTRxHNhBdIb3QePaVepqVC/Q
 IDpg==
X-Gm-Message-State: AOAM532TAz+6SAY0QOGVolyopFwsWqSDsrmUmVS135uLfbYY/Ef9V7aj
 I3+gTvcjZOV+JYHdam8UKcg=
X-Google-Smtp-Source: ABdhPJxrKaokqHqKhJi6lQipwFbwJcjsTCo+9Ts9grya2F9blBNHVieAVdnfItI+alcaSc0oBouY+A==
X-Received: by 2002:adf:a4dd:: with SMTP id h29mr6177242wrb.372.1591726535306; 
 Tue, 09 Jun 2020 11:15:35 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 k21sm4575975wrd.24.2020.06.09.11.15.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 11:15:34 -0700 (PDT)
Subject: Re: [PATCH v2 9/9] Revert "PCI: brcmstb: Wait for Raspberry Pi's
 firmware when present"
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, bcm-kernel-feedback-list@broadcom.com
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-10-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <3f1f622d-eac2-6def-6006-f612c4aed1e1@gmail.com>
Date: Tue, 9 Jun 2020 11:15:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609175003.19793-10-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_111536_893289_F29C5841 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 10:50 AM, Nicolas Saenz Julienne wrote:
> This reverts commit 44331189f9082c7e659697bbac1747db3def73e7.
> 
> Now that the VL805 init routine is run through a reset controller driver
> the device dependencies are being taken care of by the device core. No
> need to do it manually here.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
