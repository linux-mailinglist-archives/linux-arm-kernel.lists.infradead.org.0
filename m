Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B158DDA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 21:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jl7HDHtoB2oLOFq5PkuLo/MFNmQQUY3DspKk7voVk00=; b=r4QCOa49OiCo2Ilwicih8PU42
	SMYb7Ac/yifnVYtFqX94BchB1arAZmlhaEuU2MUluGx1baZgm4mTXBJH+VgrtKV86r8RwNqUCj+ea
	qzNwfiEfX7hib76BN/PG9xaKwdkDO4xUDHniKOWnVNL8OlaluJe9oSf+TLt293WRLm9XDH6+KOyy3
	F9SnDNJNjB42VK5jAd8LCxpEZ3nRz31XVFnUlhMO3eu0VlJGcqjLA5wxe+pnPR30p8kzENB3L+cNW
	zT7MoBT2P+2DwcPGVOgUMiutgQo0zYrlrnx16suLO4KUA1eOjL6rufQcxXRaOmEa/I9ARFl6AvWqp
	M+glq8gzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxyaC-0001qT-Vf; Wed, 14 Aug 2019 19:05:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyZs-0001pM-Mh
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 19:04:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so45804pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 12:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=vseqSnSbN0/CqanKomWBzaCIiF5jTd1dDC+ZOTFJoRU=;
 b=NIUd46jprVTVWb3fgGd29jnISTwMC3sQLMBzqbzBx5/C/GbBaRyCyZuIZG4f8Uch80
 XGuLIqfmPvQ6z82mGFrCsuSFrROVu1t9z3XyMwxTEMjTlKIV5FkXdjanZh7Dd0POtN+S
 BwA9JU2VOATUXFcUNJCTHbhzp1EW/NnqqUw7VjKYbTpSAYfCV4lvoYfL37oM4x5RCCMG
 dgbSOh5K2P9x6Kw3+5rYztkqapb02op3DEUgrh3ZanrRGjq8F7MZomVPda30Ty7lY3/N
 Cl3ePLIn0U+V3+NOqwAJ1FHRAHOL21IJvANqGqrKfbgscg2sJCL035S3EbBpdmHZQxNX
 8NFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=vseqSnSbN0/CqanKomWBzaCIiF5jTd1dDC+ZOTFJoRU=;
 b=bXpk2wPHAaM1i92llJnzOr8DUFGUnR1ZZhm5/Rfs/unFLKjK3kE4QltNuFp8WrXBpu
 gfNxbr5xdxt+7YpLtsh+C3nBTyGbmyFhD6HZ8W3kJfwVoU9uqFk8J5kcaqxVuBEUCrWU
 0KmWMJi7HlNRBCTKkeQ3OHluPpRFvEyIVvRx2NbAOI/GAQ4KcUs5GpCSCqMphhJHi7AD
 g6KBqjCFH44spN53RJUtmUNt9vMX7Pxbu8TLLKdpLwROI01J2COJSYyjhsM8rSHT4DiQ
 TQtLzm5eYtqkuCW7GEy31SMjQY+YUtI+JW7qZBuStNTHru888TYNdoyXTlaMxORNvtA7
 NysA==
X-Gm-Message-State: APjAAAVPT0URhBnqdGW8S3wNQD9u12vG/9uPpKCd8rAppAf42ztdC5Ot
 KbFIXDKiYCUkUAJkuETkkg8=
X-Google-Smtp-Source: APXvYqxPvTpGzpOkdo/g/K4RNLCTrEvQmHU4pCu/ZH1U09LHKXfy4gAnJ648mZN9j/inAzh8Er9WwQ==
X-Received: by 2002:a17:90a:cc13:: with SMTP id
 b19mr1108603pju.117.1565809495303; 
 Wed, 14 Aug 2019 12:04:55 -0700 (PDT)
Received: from [172.30.88.90] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id t15sm702679pfc.47.2019.08.14.12.04.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 12:04:54 -0700 (PDT)
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
 <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
 <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
 <20190814103054.GI13294@shell.armlinux.org.uk>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <e0a19469-af9d-d9de-499f-4ffbf04542b3@gmail.com>
Date: Wed, 14 Aug 2019 12:04:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814103054.GI13294@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_120456_772247_A525B082 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Len Brown <lenb@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>, Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/14/19 3:30 AM, Russell King - ARM Linux admin wrote:
> On Tue, Aug 06, 2019 at 09:53:41AM -0700, Steve Longerbeam wrote:
>> The full patchset doesn't seem to be up yet, but see [1] for the cover
>> letter.
> Was the entire series copied to the mailing lists, or just selected
> patches?  I only saw 4, 9, 11 and 13-22 via lakml.

The whole series was posted to the linux-media ML, see [1]. At the time, 
none of the linux-media ML archives had the whole series.

> In the absence of the other patches, will this solve imx-media binding
> the internal subdevs of sensor devices to the CSI2 interface?

"internal subdevs of sensor devices" ?? That doesn't make any sense.

Sensors are external to the SoC, there are no "internal" sensor devices.

Not sure what you mean by "binding" either in this context, but external 
sensors can connect via fwnode endpoint, and later translated to media 
link, to the receiver CSI-2 sink.

Steve

[1] https://www.spinics.net/lists/linux-media/msg155160.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
