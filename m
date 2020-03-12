Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F600183574
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:51:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlVTLxEBnndqO3efREPQqzNxmhv/Gjm3GgoJ9+lUaCE=; b=k1dVd1DJ7dhhGJ
	u/shRehaK+G2TiAAVNWnSS0F8ueqSUpAl54j8VzmeiiscVtOTSREy5oEHVyrZrRSqfEt6kcHYMfLP
	5b43cFLmj5LJXbiBs1KGH1CnHw68nrsT6Gnoc/EWimteJtuIcgm7M0lMT+clbqRQn/hi+Xg4EY1pe
	XPSSycPfguOocyio8VUkarrA6VezbTiR0RgN7q78D6h3zq8cbVVeCk2VwAnEsmNMld4IKVbK0PKAr
	FKrl/2QWmvlqU7TWbCY3AWt5rlDKKVmc0qlY9xczBJJ+gDrwO3albQIPvVhXMNSHb1iTogK2SJfDn
	bdq+VvtVjGbrDbb+3Q4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQ7c-0003j3-HK; Thu, 12 Mar 2020 15:51:44 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQ7P-0003gh-Md; Thu, 12 Mar 2020 15:51:33 +0000
Received: by mail-oi1-f196.google.com with SMTP id y71so5931018oia.7;
 Thu, 12 Mar 2020 08:51:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RVkiFkRTeMMPin+ptF3A5+ftH+/EpqC/zb0+nmdjcHs=;
 b=gFBd+UkCsy6N3x/L3ijLHxPp5HQJdN65H1ly7Lb2a+YyzBE8RSYaZ+CT1KjKk3dMgT
 m/WzuEBcdC5CNOBMuiELC+Sw4WufzEdh/Q7AV3t4JwrRtJv0MonhLm91IrMwpayI93Ra
 M0sQfuqCAM0Xq4DPhFnCY/7cLU8gumQSXbxAGYXnK0n8R7blTPXsn06VxJAL7RKkHd/m
 gHQZTQF6cYkJhN4iRsTCGXo9cmtZti43hPsoKcLDM6ytLyQn9uZDIByX+sozmjHIOWCl
 Y0ds+TLey3OfE/f3wfdaE1EBevZTmixRMjtgwWQKnSVWnymFrLGwUtv+lsl+TtdT3L9C
 Bk+g==
X-Gm-Message-State: ANhLgQ1C8uDk2YBxF1fDi5EoQuUURpwY6JYp00qiDcyVD0c9JktnsQe4
 Kl1YjGWxLCa85GvtHvF69g==
X-Google-Smtp-Source: ADFU+vtk9BrXX5QE/hVGSJYCF4XdX2a674gSPQcVH6JhNyN1Jkv/+TdnylpBR4PjORujal77pChfLA==
X-Received: by 2002:a54:4e8d:: with SMTP id c13mr3097374oiy.27.1584028290815; 
 Thu, 12 Mar 2020 08:51:30 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 67sm6631494oid.30.2020.03.12.08.51.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 08:51:30 -0700 (PDT)
Received: (nullmailer pid 26600 invoked by uid 1000);
 Thu, 12 Mar 2020 15:51:29 -0000
Date: Thu, 12 Mar 2020 10:51:29 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 3/5] dt-bindings: i2c: i2c-rk3x: add description for
 rk3368
Message-ID: <20200312155129.GA26550@bogus>
References: <20200305143611.10733-1-jbx6244@gmail.com>
 <20200305143611.10733-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305143611.10733-3-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_085131_772650_58CB7E0C 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  5 Mar 2020 15:36:09 +0100, Johan Jonker wrote:
> The description below is already in use for rk3368.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3368-i2c", "rockchip,rk3288-i2c"
> for i2c nodes on a rk3368 platform to i2c-rk3x.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
