Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C50B1BE68A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bv4u0ORbax3918KE5S4rJ2N3+IAqqsbCDaOVwXlH01c=; b=ipynC9HZz+FbXt
	TA1wyI6Ewm03FsavmkzKS60JilnMVJOFbAHG2qqvXLUkI7/EEkLvmnd0rWYEfC1YRRX9Sk+o9Y/0S
	x8+Ou8OukUjTiz1lh+6rIQ4Cen8jLsDuzX1as8PLjbjwShPrY7AC9s5M6hLcudtOgG+A4BSDISMMO
	nTulPLPtyl7yk6MjPr/5nANLk7xtpzjBq48Uk10WwaLW3V/XOZ1qO3KgqbmOW8jjFXKwSXWoISVxn
	u8d+/VTOUWSY9NjiI/aXc6KdslQwtRaa4/TgDzdrcugA4v6E7bMJ/dLJUUo20T/ax3MKV5kXZboFq
	XHn0+QgNMg2d+ghRk+hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrjQ-00058i-BJ; Wed, 29 Apr 2020 18:46:52 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrjE-00056w-Md
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:46:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so3186300wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 11:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=V3qZVHwLaLK/I0b0rJ63jIE3SQ22bSXyi7PMzS7GVwc=;
 b=v8RjEYW2XwlnNxy17CGhj1lG7soRDm2FdRbHVvt07M7BPpiZupWPv5xqJsnSj6KoLA
 dT9Cr8hP8fI35N+Q14QOEu6k1jbn4fMl82QE+K0xgmvNVRMoVc8292y7H8ByWjjFSE7a
 PdbGY8EE7mNL29zhFBZ0bITzNJ1JSUCby2sDsYTwnaIlxN/lwf6pZgwsQvgo1zIP9RQv
 Qq2Fh/ztGRrUxpFSqjhVDt/ey9aa8li4ufifTG+lN0dB9PU2hxbGUHi2k9DZnUBRoCFI
 iEp12Az23yfAo4hTW1jDEaXzPTQYHVa6JTT+GTErAiK+w+i5TMEjybytvo6Bzyp1jSBX
 zOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=V3qZVHwLaLK/I0b0rJ63jIE3SQ22bSXyi7PMzS7GVwc=;
 b=b2mRq/BVlbrsDIQRj/YT7ZgeXdyB4VzlXLfJHk1KAwtqeNq3DeI1zhqTFM9y0uemEZ
 vTL+KJl34tcG9bJ3OXEveHeRneqrypKGkoWmyCRcD2Oq9Op2CV1Byd+zYHDS24sOiBwB
 IHMc3PsQqSzhiJB0d84+q6NdZL9lPSNX/3XMLKKXayzftaukvvAdndnI+V9njMsO9flG
 hMtoWjrWDwn6SN+vro0hTBOSV6sNSSrkx++Ir7h/2kvafffLFeGxwM++anVgFA+OgSAP
 95v9zF55lL2yTHOuYKfxJATBeqVav1tukaLJDPBwi2zL3MaSgY42oxFiFEQLSwYD4MyB
 8gJA==
X-Gm-Message-State: AGi0PuZKVgM3Nkm95n87p/l5blt6lfm6+cyVsvX3iZQ0PqWVFhfU3CWN
 aPCPM0Tu0TECQyvaU6XHDX2rNiVSK3EqKA==
X-Google-Smtp-Source: APiQypJdmpXOVXDmvkIQZMAsdMpd1NkWe/42oxJwKXczVw0SkYct2NGkjK3LGFf2yreraYRKmtXSIw==
X-Received: by 2002:a1c:3dd6:: with SMTP id k205mr4774219wma.138.1588185998986; 
 Wed, 29 Apr 2020 11:46:38 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id o6sm145378wrw.63.2020.04.29.11.46.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 11:46:38 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson-g12b-khadas-vim3: fix missing frddr_a
 node
In-Reply-To: <AA7AFC1F-AB6E-438D-8510-BC472552C554@gmail.com>
References: <20200415095927.3780-1-christianshewitt@gmail.com>
 <AA7AFC1F-AB6E-438D-8510-BC472552C554@gmail.com>
Date: Wed, 29 Apr 2020 11:46:35 -0700
Message-ID: <7hftcmku44.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_114640_733769_7BA2E2DB 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christian Hewitt <christianshewitt@gmail.com> writes:

>> On 15 Apr 2020, at 1:59 pm, chewitt <christianshewitt@gmail.com> wrote:
>> 
>> From: Christian Hewitt <christianshewitt@gmail.com>
>> 
>> The frddr_a node was accidently deleted when creating a common dtsi for the
>> Khadas VIM3/VIM3L boards, preventing audio from working on the VIM3.
>> 
>> Fixes: 4f26cc1c96c9 ("arm64: dts: khadas-vim3: move common nodes into meson-khadas-vim3.dtsi")
>> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
>> ---
>> arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi | 4 ++++
>> 1 file changed, 4 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
>> index c33e85fbdaba..c6c8caed8327 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
>> @@ -154,6 +154,10 @@
>> 	clock-latency = <50000>;
>> };
>> 
>> +&frddr_a {
>> +	status = "okay";
>> +};
>> +
>> &frddr_b {
>> 	status = "okay";
>> };
>> -- 
>> 2.17.1
>
> NB: I appears the same change was sent by Neil in [1] as a fix to 5.4, but
> this appears to have been dropped/missed somewhere.
>
> [1] https://patchwork.kernel.org/patch/11198535/

Hmm, not sure how I dropped that one.  I applied (again) the original
from Neil (with updated tags from Jerome) and queued as fix for v5.7-rc.

Sorry,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
