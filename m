Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE72C07E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 16:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zo69Ae2ijrblJo5LXXf5O+sGEBbSzbjgDSTEEnF37MQ=; b=i4vo/YP6JhANQx
	Fuzz6skC8ED4Tg6XQnV9xkOze8jsF+X3YQwx5fpUNNCEDPvLOzNAbL32wKbuMPVKn+xo0rZWeeKh2
	HKIwlcH7MdVaDsYCKc+DXXcKK8Xa6sIggIhm3PT4mqsjdXxU/+3GIKZpbdZS2FN0mkD+P2JlWJQ3C
	Zm2WLFwTpst2RQ9q4pOaKV60w1DzHzQ95BcvlQguWprdbk45Lg+0FQOkcn0LGTYj86ssK4vaaHaZ0
	kn6WGnc6gRjY+qren8JeQpczbsTRHkXnjxQiKEu0Hz1n7L8Mjyc0I37FqeDsxZgt65rKvJxxVLvbh
	tGVflkiblcgYDS8kjFrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDrWP-0005Sd-GA; Fri, 27 Sep 2019 14:47:01 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDrWE-0005RZ-Ct
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 14:46:52 +0000
Received: by mail-oi1-f195.google.com with SMTP id w144so5409719oia.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 07:46:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=aZlVgMJaT7rOPZiM8w7rcStZg44fT5gbKnaXVG1cXG4=;
 b=R4/qQsI4gpee34uK6D2MbdEee6ngGTXdNNWZkttH/ezJ2i1BHNgZNybaBZb3BtEgdZ
 G5QhWgc+0Vpz1WLgS8qt6b1SUuPwfMD4ecklSOIk7SYtTkKz2fSQ7cl9ZNCzrFuNVL4w
 sUknLvTg7pzPRobEBHrnNa+ZRH+nIPJlrnt0O/6ObOVrUQOakfxl8A78zhzV8hV5PM5K
 y/3R57BgYQ80qg3o/mZ32KfYO+O5srJWFGvTzWc6fl7+CAIs0+iYzsQJoF1KrXLtcjoz
 Q9uV2DwnaQqr7y0ZVypMmGq++4eD+JddbcX87ynNWvN/t4IjtSUf7gMiHXijU/thK9yv
 i2Vg==
X-Gm-Message-State: APjAAAWDQHctxFdbR3zX8ejNoyMauZWZkhYEBuYCv3dGAolIefMS2AtO
 AacsY/NoXkTyRSuyMhjUOQ==
X-Google-Smtp-Source: APXvYqxPbMBIvHsxs6cuZVhSV/0Gm2UOo+hy9NETZjaT93OQV818ipXiGvv3w5uchztu7d7QZeGISw==
X-Received: by 2002:aca:5ad7:: with SMTP id o206mr7532882oib.59.1569595607838; 
 Fri, 27 Sep 2019 07:46:47 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 38sm1025737otw.28.2019.09.27.07.46.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 07:46:47 -0700 (PDT)
Date: Fri, 27 Sep 2019 09:46:46 -0500
From: Rob Herring <robh@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V9 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Message-ID: <20190927144646.GA1921@bogus>
References: <1569377224-5755-1-git-send-email-peng.fan@nxp.com>
 <1569377224-5755-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569377224-5755-2-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_074650_436993_2DFF4942 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Sep 2019 02:09:08 +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
>
> The ARM SMC/HVC mailbox binding describes a firmware interface to trigger
> actions in software layers running in the EL2 or EL3 exception levels.
> The term "ARM" here relates to the SMC instruction as part of the ARM
> instruction set, not as a standard endorsed by ARM Ltd.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../devicetree/bindings/mailbox/arm-smc.yaml       | 96 ++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.yaml
>

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
