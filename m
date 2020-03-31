Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB56199A36
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJWeBSmc7cU64v/HmmoBjqyWUwMcdGME8UlFTLiD/ro=; b=X/7JVFBjLZnTER
	mg2x70/d9fQGL0GcVIJQnYGaFKm6a01BzT/x8mBPtgRaWiubykQMGJn5N9qgHHO8O12lPGioxZY5g
	9tIWonIgrUG1ByE/jqjNBO97a47iwPA65zgljd7M3rf7UqvFHkQtumdhtVYFLemVF4lfR1hAxoii2
	NNufJ2DRYZPNmDX80UvvTviDjpqo0WNiWWjzp871QjTqQZVH2ek4NVUpUO7JFgI7PaX4iJbGEMOLv
	hm1QB3xvUDz3VqNhJ5P4acsp5F/bqoQ83l6ge4UOirmQCU8WTveq6AHET4+JMvJWNhnHivBk/JaNQ
	+rRXWDnFKpz/etj98jwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ8R-0006st-NH; Tue, 31 Mar 2020 15:49:03 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ8D-0006qF-MJ
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:48:51 +0000
Received: by mail-oi1-x242.google.com with SMTP id w2so19352514oic.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lR6VI5TqcpXs87/jqJF1QQ+90aJ9QrWV0oJSvVQnRQQ=;
 b=NerzGeyeJ9FlDvkRfrfYofcHkk1qC3VUaxF4QftaGBZgFiHvxgLme+JxPSitUjIZ2K
 WxyCcCHJ2IBY/LwTpk24N1wIhuOf9YOLlNW+Ax52avGP2RXbC8kavph9YpYowrBAVB2G
 7zTJjXqUEPVntcflGR3uHiCvCqj+k1W2MEZwCJKpAMLeH7ws1+poOtDC+Th27crZpiiX
 dOcjbn6JCPaBfHGRc1lQIpyziB9+FRvgCCBT52OGPayKwy5kB5biP49u0y/ecKIDt2nI
 gLR+EgMEXk9GSMajxM66uL3Veta3UgHduYfAvNM9ycGhHmBBxYHhRCG4QJU5/+ixLNd8
 lFAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lR6VI5TqcpXs87/jqJF1QQ+90aJ9QrWV0oJSvVQnRQQ=;
 b=YHpt28V6QDLWEynb41CYbUR63iipW7rV7RWM74IUG24lzjQjTJ+eC1KzpWBKVp7+JV
 xRaqQRc5fUSi+3q3WBEsKrG0MQ5JQoUWiRCjC25Qk8umGbrnhxAs98oOp9iXUUmyAyFS
 wnWPFRvPQxJr6GOlYEoAsm21Tp7JXqlrP4OvQQV0hmAHt49tMiztJmgEcV8qiULV6u7H
 0PsIkPuMwMSrgwu94RRyjRPlKZz8oiqW6JfgEkg6ov0dgFdRwGYQFRzDjf4OiJv7RY65
 igWLDkaWmcmKeX4wmTYcKXYh1YpaaFRLw5AWBVPJLHJES9fQyb7A6b9B0Swc4jFyNrPi
 fQDA==
X-Gm-Message-State: ANhLgQ3l4lUocgIV6RVYaiQdw6gV+7FqtM4MtVIWETgj0qASxLAJhIEX
 8O7FpF43qx+fEJe7AIlR84IM/3htpQ==
X-Google-Smtp-Source: APiQypJQI4wztmYl4tQwt4Unamf68Lzj4pC8Kzd6EUoCToLjQF+q9P/wSKrMPgIA2c8YIn3iFa4ijw==
X-Received: by 2002:a17:90a:ad8b:: with SMTP id
 s11mr4229381pjq.8.1585663747471; 
 Tue, 31 Mar 2020 07:09:07 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id q22sm12710566pfn.22.2020.03.31.07.09.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 31 Mar 2020 07:09:06 -0700 (PDT)
Date: Tue, 31 Mar 2020 19:39:00 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 00/22] ARM: dts: stm32: Repair AV96 board
Message-ID: <20200331140900.GC17755@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331040736.GA14274@Mani-XPS-13-9360>
 <7dc86fa9-504c-cbc3-9a24-29644d66f9e3@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7dc86fa9-504c-cbc3-9a24-29644d66f9e3@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084849_752898_344441A6 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 03:44:52PM +0200, Marek Vasut wrote:
> On 3/31/20 6:07 AM, Manivannan Sadhasivam wrote:
> > Hi Marek,
> 
> Hi,
> 
> > Thanks for the series. 
> > 
> > On Tue, Mar 31, 2020 at 02:56:39AM +0200, Marek Vasut wrote:
> >> The AV96 board device tree is completely broken and does not match the
> >> hardware. This series fixes it up.
> >>
> > 
> > Completely broken?
> 
> The board didn't even boot.
> 

Hmm. I think you're using a new revision of AV96. I added the board support
with an old version of it (might be an evaluation one). I don't have the delta
or changeset so can't compare. Anyway, DH started selling new boards and I
think the old ones were discontinued or not made available for purchase so we
don't have to worry about breaking the old one.

> > The patch submitted previously was an initial one and there
> > were many interfaces not enabled. I agree that there are few _obvious_ things
> > like SDMMC1/Ethernet pinmux, LED naming were wrong. This was due to the fact the
> > board was on early bringup stage and I couldn't test Ethernet due to my setup
> > issue at that time (yeah I know it is bad). Also, I don't get access to DHCOR
> > schematics as well for things like PMIC. Do you have access to it?
> 
> Yes, I do have access.
> 
> > If possible can you share a link to that if available publicly?
> 
> The SoM schematic is not available in public, no, sorry.
> 

Fine. Just wanted to verify the PMIC part. But I got the information from
DH guy offline.

> > I will test this series and also the uboot one on my board and give my
> > Tested-by tag soon.
> > 
> > Anyway, I think the patchset subject could be something like,
> > "Improve AV96 support" :)
> 
> I think if something doesn't work, "Repair" is the right word for it.

Right. Didn't know that it doesn't boot on newer boards. I do have one but
haven't tried mainline kernel on it, just vendor image for some demos. But
feel free to keep it as it is.

Thanks,
Mani


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
