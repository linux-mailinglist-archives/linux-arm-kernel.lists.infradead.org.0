Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1F0111B18
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 22:39:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPR79GsjW8hrVxswZBGJ9giuYtyWgSKd2FSdnMLE25U=; b=Yb5ZztwrjiajO3
	ih0mOKVe0tQhbpGn2sbtWc34t68FDxaD8Zl6mkHjsL15QlVTYBt4yqb3Td58M3dcevjB0eCdfUg4c
	kuzxxLvHzrJ02PQxHNxxx0AB2A8jY2VP4h9/V7y4yrIcwYe//MN2TD8X2SEfsRkBuLYHZf79zquh1
	WZ64fNbPz74M0xFP+lvcQ7KJ0LmM16HRTvyCKfN78oCCqzyOmcBzaXvLsS32haOIyKN0JUiJ91im/
	vpEh+QeiMOGJrtdkvQ0M7lQcgBWJI3ZKm3wwno3CJu1X4QE21hMcltIjMR393xexK/X8DNCfX9H8n
	1/p3oGcWQbSOPtG/MWjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icFta-0008I0-7c; Tue, 03 Dec 2019 21:39:46 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icFtI-0008HT-UN
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 21:39:30 +0000
Received: by mail-ot1-f65.google.com with SMTP id d17so4419629otc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 13:39:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DuOA0zBLQcvKVkSQwZNftSyUaZTa7uOJ30XltITcLWM=;
 b=llRcrvvWIVMXsyN5wBY/Cy0SJ72d/CIvauAMvdmA022H+D0yzeeHfMqhhnZqkZI80j
 jJ/uuyf6HJkgYBcRKvBEi2/xbS3qQg8713K2od3FDHlaOL/6CYEhDR3WTv+ZgCGvkRui
 +okUOdwkdiQA9A/gq7A5/VHdMx8m/6MmG7xiz6uzx/0HnyqJgNjNbkeDVABlCWyfJSPK
 pCivIzVR0BG4Oh4E2bJ5irLbRRQxLnRmjyeht5mfA7nFLG9BHe0GORVLJp41t427p39H
 bDfoo+SsNn3W3YKErDIsfUyvWfFXRNXQE4bJNOltofmTe/t3GavZ8v7GYDnNn97yOs/y
 e7bQ==
X-Gm-Message-State: APjAAAWOIkaX7IfsTyZ4z1CX9SGC3aKpCd0Q3UdoI8Sk/kv+Pp3gMtQP
 SCpE5PBsRXKmexDqRCi9Uw==
X-Google-Smtp-Source: APXvYqz/YJVpzj5Ns4de7SfcrAw60fS1tPC0hInpJwwLL2VAApzqpGh6/6qNf4XX9VcVikm16HhBmQ==
X-Received: by 2002:a05:6830:1251:: with SMTP id
 s17mr15158otp.108.1575409166858; 
 Tue, 03 Dec 2019 13:39:26 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o2sm1583188oih.19.2019.12.03.13.39.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 13:39:26 -0800 (PST)
Date: Tue, 3 Dec 2019 15:39:25 -0600
From: Rob Herring <robh@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH 3/3] dt-bindings: i2c: lpi2c: add imx8qm compatible string
Message-ID: <20191203213925.GA22895@bogus>
References: <1573995530-14573-1-git-send-email-aisheng.dong@nxp.com>
 <1573995530-14573-3-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573995530-14573-3-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_133929_004872_B9976657 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 dongas86@gmail.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 17 Nov 2019 20:58:50 +0800, Dong Aisheng wrote:
> Add imx8qm compatible string.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
