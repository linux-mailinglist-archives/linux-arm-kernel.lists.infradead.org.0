Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699278E10C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 01:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XkYUHjSIWn4A3jj+I3WxemMPJ7t2+mNJsSQ9Dk1Jzow=; b=WtyIL0+6s1LMGjhAvkA6x8dwY
	/ja/wnEcmoEbKg0Fb9m9ye8ENMACodMdAtSCNgGSFmr3hQa704cfpy+JMevpwLoP+w/ni0XcnatWA
	fGAcMHWgQoPgBuV63rSS/nZ39wY4yt540gGuquJPXlj/rorCZ7hkSgRGjCN4Eb3wxAVqFQDnrysoV
	68B9aMgH1StBFVVtxmImYUu7SSVIDNuaD4hEzVTdCkWUdhzdGBZTqynGnuMHNlV1Lu/myiv778wDJ
	P2KvEWoNy0d30N/Hz5OCQ5odmd37tGZ4WVpbmGKZeyH0o74XwkEOeGCbsONzRJspTTttVEpVahMI5
	8RADmU3GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy2GH-0006OQ-Nj; Wed, 14 Aug 2019 23:00:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy2G0-0006No-SH
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 23:00:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id j16so607887wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 16:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=LQeCebufkkpC6WKzESrg64pDAh48aV2VR4IeDbj6/L8=;
 b=N7B99RfDJqtudXxJ12iE/11Z9YHhp85VfKeZYP2Eg1yxBgprn1LE3EN/cNoOR0SNiN
 BNomQm6AsRUPr5xxMPC3yZuovmJrSQ9SQRyxEUJU0HomC3BrzYtIGC4RE0nrXV81FPwF
 Qxl7GutRvuRPfS3tpLVyeRdhIBEM7gPJ/r/Vl+YSt0gjfsB3GOACTiFiFmKQ/6dLvQz4
 VWJbewtH7gy1GyB4ACiemd9XYNFMpvxrUYI8TgIaWsXaIALtd11cFFGpriHaj7Lk7iZL
 iFhja2RdtSCThVqqRznoOe5VtD8fGVVDhpyjilGx66CsJyPaDiX/7YQxKQNdj+xRnXQ+
 4D+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=LQeCebufkkpC6WKzESrg64pDAh48aV2VR4IeDbj6/L8=;
 b=UDqA/teBW3AysP1Ii5viCpCQ+gKtK6Db+uCQEo0uQ6k+8VlMrvO7tsBMzqVM+ZO/z+
 n5CiJ3A9mi3sckKjq3uRY+SGJRRw+bMbUDePaxyn4ijrDX7jJXtHhm4z/guyu/71BBUx
 J1u5OuIXYUPUTcFCnJ3b5d7XhRJkOxVLOmOb+OOVYUXWFlqFSMOWgREiZqY0SpqpH0dg
 26s8OVBBFvn+j+cATg1x3E+27AEytS8aVZBUvl78+38g7o7TwH10f7UY51ctAO5OTzKd
 lWlZaGzP0a1KNapRxmWOwCa5OqfX5pBpe22TxlIhQ9Ep4OBTGoLYJDtMeJ4u0mZ7iDMN
 SF5A==
X-Gm-Message-State: APjAAAV7FbuiVdgUlARxwxno0mS0jEDW+DzZVuAD06t5IFaR+2ZLuJq8
 m23E0NHW0AV1jaHO93VCg2k=
X-Google-Smtp-Source: APXvYqy/+/XdeQktv/fI48rKLISc8GH28SdlH+mrdeysQ6Kcvq+nTphnRe5OL5sSxp3kPcLQ8LJALA==
X-Received: by 2002:adf:fc87:: with SMTP id g7mr1798905wrr.319.1565823638173; 
 Wed, 14 Aug 2019 16:00:38 -0700 (PDT)
Received: from [172.30.88.90] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id o9sm777435wrj.17.2019.08.14.16.00.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 16:00:37 -0700 (PDT)
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
 <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
 <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
 <20190814103054.GI13294@shell.armlinux.org.uk>
 <e0a19469-af9d-d9de-499f-4ffbf04542b3@gmail.com>
 <20190814220437.GJ13294@shell.armlinux.org.uk>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <1842bf8f-4f97-6294-41db-74f9f8e2befd@gmail.com>
Date: Wed, 14 Aug 2019 16:00:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814220437.GJ13294@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_160040_942607_83B8BC8C 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Len Brown <lenb@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Enrico Weigelt <info@metux.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/14/19 3:04 PM, Russell King - ARM Linux admin wrote:
> On Wed, Aug 14, 2019 at 12:04:41PM -0700, Steve Longerbeam wrote:
>>
>> On 8/14/19 3:30 AM, Russell King - ARM Linux admin wrote:
>>> On Tue, Aug 06, 2019 at 09:53:41AM -0700, Steve Longerbeam wrote:
>>>> The full patchset doesn't seem to be up yet, but see [1] for the cover
>>>> letter.
>>> Was the entire series copied to the mailing lists, or just selected
>>> patches?  I only saw 4, 9, 11 and 13-22 via lakml.
>> The whole series was posted to the linux-media ML, see [1]. At the time,
>> none of the linux-media ML archives had the whole series.
>>
>>> In the absence of the other patches, will this solve imx-media binding
>>> the internal subdevs of sensor devices to the CSI2 interface?
>> "internal subdevs of sensor devices" ?? That doesn't make any sense.
> Sorry, but it makes complete sense when you consider that sensor
> devices may have more than one subdev, but there should be only one
> that is the "output" to whatever the camera is attached to.  The
> other subdevs are internal to the sensor.

Ah, thanks for the clarification. Yes, by "internal subdevs" I 
understand what you mean now. The adv748x and smiapp are examples.

>
> subdevs are not purely the remit of SoC drivers.

So there is no binding of internal subdevs to the receiver CSI-2. The 
receiver CSI-2 subdev will create media links to the subdev that has an 
externally exposed fwnode endpoint that connects with the CSI-2 sink pad.

Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
