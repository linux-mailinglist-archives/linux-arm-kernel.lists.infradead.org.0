Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB3B122AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 21:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0cg+y5r8oQaf9PTRRpOTRspF2TQVJxbz57L0msVGIQ=; b=ECwCO556UOy4q5
	j4FxfQiYKlnzgbAdrgLtPKF2MAMnHtiGSs2QNNRcn1M1kf5TjtSXjf8TeZRs94lbZPnVYNCvDJJxu
	c+NDUQEK7xWhPFFZPgA3pKLF/YBxANXM4vpah/Daczk/+E0azjvhpSGMztyh9M900yzcykyWht1cf
	GYjyt+hLEMGRrTxTghMjS0NpTVog/mH38XS8MAN0FKEfCJwwbKmzPW/BTUTJUWQffbMej1IhDK+dG
	DsTjJpZS9LWfds27xiTLUVnmS9DtP+B1BAUwnJO961A4Q9yL9tax0XrayqBQj8eAN9IlrZuGpkJ86
	m4xKCZ6n+x4pQYOSK4hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMHeu-00073I-DT; Thu, 02 May 2019 19:46:20 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMHen-00072j-2z
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 19:46:14 +0000
Received: by mail-ot1-f68.google.com with SMTP id w6so3230891otl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 12:46:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1jwmrQ4Ign4Eu4VmWKSM4inkJafWEY/8lvzD6Hu6rBw=;
 b=uE/uH6ez7PddxxczcWkm1utExASgQxWSZXNVwaLonGq1+4+KcH76FZtABahdGPudgl
 rsyjTnTJs0BSAlbjw/cAOrHETc+fzG1J3K8FyKOXdKg2IDs/QxAarwR5B74y+bLuTErs
 zqtf9pzame2FogN7PhsqaNfJkxnhP/7ljjAdFANlGdSvdcfzDM5ARy2NaJJS6tKsK3cK
 F9sHJN9HnBVfD17ztnfM5VLEATegeiq0RbuXcPFeAtpEfAN7tlJJBF5PIm/bhaAXldAL
 ESA/+9qDHk+jNctHLgbodigFL7qA2xeR36gau4uVWRI3c6eqCz9xb1YS6s4zbJUlKxQP
 on+A==
X-Gm-Message-State: APjAAAW26ODxTkOkJEhigQUsrjkJhERYWhme9ToK4QM9aixdjwsclQpd
 s5hhYMSaXUT2PwIetv+vhYj7unQ=
X-Google-Smtp-Source: APXvYqwH+e5sOvu93B5wAZaUHHl7jghJLY2r0xqMCOopei/jf0g2Cyb888C9U37rbI1MYzmfSAZYzg==
X-Received: by 2002:a9d:7a90:: with SMTP id l16mr4132106otn.71.1556826371390; 
 Thu, 02 May 2019 12:46:11 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 31sm6169930oto.18.2019.05.02.12.46.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 12:46:10 -0700 (PDT)
Date: Thu, 2 May 2019 14:46:09 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 1/7] doc: dt-binding: mxs-usb-phy: add compatible for 7ulp
Message-ID: <20190502194609.GA19646@bogus>
References: <20190428024847.5046-1-peter.chen@nxp.com>
 <20190428024847.5046-2-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428024847.5046-2-peter.chen@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_124613_131092_58221DA5 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Peter Chen <peter.chen@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 28 Apr 2019 02:51:13 +0000, Peter Chen wrote:
> Add compatible for 7ulp USB PHY.
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> ---
>  Documentation/devicetree/bindings/phy/mxs-usb-phy.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
