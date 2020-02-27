Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED080172B6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:35:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4GGum71o1wPJlUILAXhRYkn3W8GztF4H2OJzmOTcW0=; b=eBJNc1hvhBYlVH
	sdLdNYlJUMGRtts6W64xLoKvQktRa/QU+Y8CDog1G95sj+K4zVbKGRyM/9m0+5u53KbOvp+6j9uHc
	nA3x+GLPAbmhiy3Jn3h8tOsQIPSU0jagkdVZtLuePP5iXi6Es7XMF222iuaJERZJiBZ68mraz4b8J
	wZhPYirTDhCnfyqltm3Ig0tdbewvL9Mg5wvqN9LqGG005EyVixLoi/+uH9FfTQ5PAxkHP4UniKupB
	PTwB/LAny64pORE15GGNVlM/wDVbfLAi4NC5urXJAulrZKxpPuOUW298z9PZKGzPDso8P8gvxYtEl
	hGYa82BuWAFSNrOhCKYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Rkl-0005gn-Uf; Thu, 27 Feb 2020 22:35:35 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Rkc-0005fd-By
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 22:35:28 +0000
Received: by mail-oi1-f195.google.com with SMTP id r16so919233oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:35:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/j9YRzazsSENp0jDKYRNHykqym2Q8baC8Im4jlERAOQ=;
 b=geEa6kYvjPaLZ4N7NA3M262Acg+MvvFliklTAMOBer5RZ5Gb3mZZuQMyMIY5La4wZH
 W0T8omtBYQX740F1CZO1PsJ+UuEPLpAk7WxvO02f7ZxmiETS5PLM/m2NickJAKJjwiwT
 +2zA1PN2GNXJi66lPZw+CMjJSa7i3wIoke54lfymZXbPRjcUoa+bgjZv0RksXShfzf/u
 3GygZajHVL2PIbNnhgX/tck0D2HlqmDT+n/K2jQt9/6Qm7DxwXQrY0ndOlDbE4TbSo57
 9FybyZzhygz+Bt8OLZOxZo/26QZ3WXfX44BcAzu9gq1eg5V3QrC3zdWc/VP1xeLSVfhC
 KEiQ==
X-Gm-Message-State: APjAAAWG+JKT0N5oHVrX4lc9szAWZzQ07QenjlfwoYXy0lSmPxLP232R
 TbZYOJDyHZRz2zA4q5jbuw==
X-Google-Smtp-Source: APXvYqzrWjRIBWpgh1ZwLv47mTNE+W2+55plP1sN1eyoDY69Ke2N2Nu4ww6R/UsceXQcrvIdKk0bJg==
X-Received: by 2002:aca:cd46:: with SMTP id d67mr1012448oig.156.1582842925366; 
 Thu, 27 Feb 2020 14:35:25 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w72sm2419276oie.49.2020.02.27.14.35.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 14:35:24 -0800 (PST)
Received: (nullmailer pid 10440 invoked by uid 1000);
 Thu, 27 Feb 2020 22:35:23 -0000
Date: Thu, 27 Feb 2020 16:35:23 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 13/13] MAINTAINERS: Update Calxeda Highbank
 maintainership
Message-ID: <20200227223523.GH26010@bogus>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-14-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227182210.89512-14-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_143526_404302_8B797A3B 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:22:10PM +0000, Andre Przywara wrote:
> Rob sees little point in maintaining the Calxeda architecture (early ARM
> 32-bit server) anymore.
> Since I have a machine sitting under my desk, change the maintainership
> to not lose support for that platform.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Rob Herring <robh@kernel.org>

Send a PR to arm-soc folks for this and the dts changes. I'll pickup the 
bindings.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
