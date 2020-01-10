Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82D91364AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 02:20:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U97U0AynZVQPye8HvMVQykSAKj4F08deP+lYkXKm0RE=; b=BryP9ylM4zEA94
	AIzJzMaLLUvqKVN4ukz15icg0EpQtz0zvJ7UBVHRo5LlSjGSUEO8iRCoFA/d4z0w0t3AC08HItoJ7
	E5bqYdQdKyUIoS/u8ED+Uobkz5LzTbQUFgrROddOhMkMM973BkKChUtfknrq3oIqBedFvJ3h6chWk
	60CICGGbaWIVSRP5FiB9igtwS7SmGzvx2RYC+nVZTvp4faJvH2w86onheRQqGW/HtW2Nbo3Zae7OW
	4pF2IsPsEKhPjup3jK7iX2Aw54rmDqG914prSMDZEg3wwwNATozZoGR0sQj+9FQ7qSo0o1J3XEvUV
	v2U74VTAC5FkWpSt6mZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipiyT-0008Rz-13; Fri, 10 Jan 2020 01:20:29 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipiyH-0008Q6-4e; Fri, 10 Jan 2020 01:20:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id x6so270951pfo.10;
 Thu, 09 Jan 2020 17:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7qHBXesr8QwkRbtaOO3IQUgTasNvUcS3WaDX6rref+o=;
 b=VQ9PP0kq9emuyO9zctbmMsV5NyHq8XW7Vh1JXS/aXmo4wPrzwkuuIr6EyjoK+/J9KT
 TzGek5TwC27brWx80ESHo4XMoWZ9S71kKr3hpupVLRGrXrJw555pViT1X19RgwfzoIrE
 Vgfht5QpYcYU8/+Bd7km+YAkVQ4FN8Bb5EASTSP4SzakzJg0HABpOIPpvcXjf6bXVUfr
 PH2RMEQ9kWfbabqRKgszqenRNh+xCrw72EO4G64fRS1uv5QMyQJne+0Ut3o0sUd5nnA3
 4sVpFmWTicK1mdCP/05JPz1XWI9uQD/ORIeS9sOy0xK6F+OvX0zAwzimukIcDkHKhZm0
 k5XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7qHBXesr8QwkRbtaOO3IQUgTasNvUcS3WaDX6rref+o=;
 b=KBjGchaNpc/zWSTmAQ22fv/LAKKiyahGfzxzwt/xP7tAfAyDx4JhC7mIV7sXJSFQCp
 c5PtkGd1RwBoUqa30EWlQoO7BxjPje1qzJnMynKaoOw/0hQxRR4HbAq5+p7xzuKyiFXb
 uDJ05OInji4CADJUQlsjE6hICWOO6SfJXTXGMt95yNt8Ki59jozWbDM7MkUMBSujFW88
 AV965l78U4zhWHTLHAPZA1sEErKVXflUth27PkNFCqhKjrHSc7HHwdrf3GbWoWmpETAC
 5uNHuIp99GtzILs/6kD2urMd3NuH1RhOZgaZ+ZafixyBKx0fMCKTo2+3XU7buPLx/63k
 gcQQ==
X-Gm-Message-State: APjAAAV7aaKP8lCdyG3Rux2hWy7sl4+cp55eUarLtiSq04e2c6gFnTgX
 Djjy+CISOhtjtiLDid8yWiE=
X-Google-Smtp-Source: APXvYqyrq1wKaVn4zIBzDao2JVWanRP644J1Yd9W7FW2nZwgfcda20aUAmsP0hDomJYYu/i1QhwmcQ==
X-Received: by 2002:aa7:8ad9:: with SMTP id b25mr926611pfd.70.1578619216147;
 Thu, 09 Jan 2020 17:20:16 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id b1sm283458pjw.4.2020.01.09.17.20.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 17:20:15 -0800 (PST)
Date: Thu, 9 Jan 2020 17:20:13 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH V2 2/2] drivers: input: keyboard
Message-ID: <20200110012013.GR8314@dtor-ws>
References: <20200108062923.14684-1-fengping.yu@mediatek.com>
 <20200108062923.14684-3-fengping.yu@mediatek.com>
 <1578473162.12131.13.camel@mtksdaap41>
 <20200108112609.GN32742@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108112609.GN32742@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_172017_185969_647693E9 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 wsd_upstream@mediatek.com, Stefan Agner <stefan@agner.cn>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>, YueHaibing <yuehaibing@huawei.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 linux-input@vger.kernel.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Thierry Reding <treding@nvidia.com>,
 Valentin Schneider <valentin.schneider@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Aisheng Dong <aisheng.dong@nxp.com>,
 linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 fengping yu <fengping.yu@mediatek.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 01:26:09PM +0200, Andy Shevchenko wrote:
> On Wed, Jan 08, 2020 at 04:46:02PM +0800, Yingjoe Chen wrote:
> > On Wed, 2020-01-08 at 14:29 +0800, fengping yu wrote:
> 
> > > +	tasklet_init(&keypad->tasklet, kpd_keymap_handler,
> > > +		     (unsigned long)keypad);
> > > +
> > > +	writew((u16)(keypad->key_debounce & KPD_DEBOUNCE_MASK),
> > > +		     keypad->base + KP_DEBOUNCE);
> > 
> > You use a 13 bits mask and set it directly to KP_DEBOUNCE register. Are
> > you sure the debounce unit is ms?
> > 
> > > +
> > > +	/* register IRQ */
> > > +	err = request_irq(keypad->irqnr, kpd_irq_handler, IRQF_TRIGGER_NONE,
> > > +			  KPD_NAME, keypad);
> > 
> > please consider using devm_request_irq, otherwise you have to free it in
> > _remove function.
> 
> No, you may not use devm_*_irq() when tasklets are in use. There is a nasty
> race condition.
> 
> Actually the rule of thumb is to NOT use devm_*_irq() unless you exactly know
> what you are doing.
> 
> P.S. Why simple not to switch to threaded IRQ handler and drop tasklet? In such
> case devm_*_irq() is fine.

Actually, we are simply reading iomem data and forward it to input
subsystem, there is no need to use threaded interrupt nor the tasklet.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
