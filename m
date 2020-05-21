Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 405D31DD027
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fhiHCMs7tZ98wpPvCH/V8Yp53BHkhPGk5KloWILQ80=; b=TodHmVQwv5fajN
	DhbzmRA1kD4jPJQ8nY9cF9+pWuY3G+k8zoRUdZj2u+Ng6wW8glMI6ZC9UO1eZL2zhRj2jUbfPaJeu
	OJDKLvnwNVeQfue3GMq9KfEJWrwSdLHnXWj2S06MUptTT8YjfWwtJWPD03oRTCiS9YcF8v0NYz63Z
	5r5rpGUKarD9AarpyGevYHEIiaJYfmW2zJl7q9XYd4yolON6rk4jFeAwDq/URsflvl0cqPxqXy4vi
	i1Q7Pa40vjrBXkhi7H9377on66cLvN2tc52WPmHfBvidZ4p2DqPSc5+bJst21QHdy3Gxi1VDdk5vL
	LV4J65NwN381FCkynSzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmJY-0006Y5-Vt; Thu, 21 May 2020 14:36:52 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmJJ-0006WX-7X
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:36:45 +0000
IronPort-SDR: 9YJ6ZnpF5W74ChQPCAAwjdwaMkRCW1xKM5jOjhA+IapKeZrb+X8l9xm3j6C0CC1gpPiOV3Z7IJ
 R5ziNvbdTxow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 07:36:36 -0700
IronPort-SDR: 7b8ROu2A3A9XEgh3Fs2Y+Q285e1ifd91EOCucSW4KwbQ1BCx/+VNxN++j7SoDTWYquT7uYB9YF
 J8sQKRBNJxAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="343862381"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001.jf.intel.com with ESMTP; 21 May 2020 07:36:32 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jbmJH-0082yZ-GB; Thu, 21 May 2020 17:36:35 +0300
Date: Thu, 21 May 2020 17:36:35 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v12 3/3] i2c: npcm7xx: Add support for slave mode for
 Nuvoton
Message-ID: <20200521143635.GN1634618@smile.fi.intel.com>
References: <20200521110910.45518-1-tali.perry1@gmail.com>
 <20200521110910.45518-4-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521110910.45518-4-tali.perry1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_073642_914268_1B5BEF16 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com, yuenn@google.com,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 wsa@the-dreams.de, brendanhiggins@google.com, ofery@google.com,
 linux-kernel@vger.kernel.org, kfting@nuvoton.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 02:09:10PM +0300, Tali Perry wrote:
> Add support for slave mode for Nuvoton
> NPCM BMC I2C controller driver.

...

> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +/*
> + * npcm_i2caddr array:
> + * The module supports having multiple own slave addresses.
> + * Since the addr regs are sprinkled all over the address space,
> + * use this array to get the address or each register.
> + */
> +#define I2C_NUM_OWN_ADDR 10
> +const int  npcm_i2caddr[I2C_NUM_OWN_ADDR] = {NPCM_I2CADDR1, NPCM_I2CADDR2,

Extra spaces.
On top. please start assignment from the new line.

> +					     NPCM_I2CADDR3, NPCM_I2CADDR4,
> +					     NPCM_I2CADDR5, NPCM_I2CADDR6,
> +					     NPCM_I2CADDR7, NPCM_I2CADDR8,

> +					     NPCM_I2CADDR9, NPCM_I2CADDR10};

Split }; to new line and leave comma with the last member.

> +#endif

...

> +static int  npcm_i2c_slave_enable(struct npcm_i2c *bus, enum i2c_addr addr_type,
> +				  u8 addr, bool enable)

Extra spaces. Check entire patch for that and fix accordingly.

> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +	if (bus->slave)

> +		npcm_i2c_slave_enable(bus, I2C_SLAVE_ADDR1, bus->slave->addr,
> +				      true);

I would leave this on one line.

> +#endif

...

> +static void npcm_i2c_write_fifo_slave(struct npcm_i2c *bus, u16 max_bytes)
> +{
> +	u8 size_free_fifo;

+ blank line.

> +	/*
> +	 * Fill the FIFO, while the FIFO is not full and there are more bytes
> +	 * to write
> +	 */
> +	npcm_i2c_clear_fifo_int(bus);
> +	npcm_i2c_clear_tx_fifo(bus);
> +	iowrite8(0, bus->reg + NPCM_I2CTXF_CTL);

> +	size_free_fifo = I2C_HW_FIFO_SIZE - npcm_i2c_fifo_usage(bus);

Dup, move into loop.

> +	while (max_bytes-- && size_free_fifo) {
> +		if (bus->slv_wr_size > 0) {
> +			bus->slv_wr_ind = bus->slv_wr_ind % I2C_HW_FIFO_SIZE;
> +			npcm_i2c_wr_byte(bus, bus->slv_wr_buf[bus->slv_wr_ind]);
> +			bus->slv_wr_ind++;
> +			bus->slv_wr_ind = bus->slv_wr_ind % I2C_HW_FIFO_SIZE;
> +			bus->slv_wr_size--;
> +			size_free_fifo = I2C_HW_FIFO_SIZE -
> +					 npcm_i2c_fifo_usage(bus);
> +		} else {
> +			break;
> +		}
> +	}

	while (...) {
		if (...)
			break;
		...
	}

> +}

...

> +static int npcm_i2c_slave_get_wr_buf(struct npcm_i2c *bus)
> +{
> +	int i;

> +	u8 value = 0;

Redundant assignment.

> +	int ind;
> +	int ret = bus->slv_wr_ind;
> +
> +	/* fill a cyclic buffer */
> +	for (i = 0; i < I2C_HW_FIFO_SIZE; i++) {
> +		if (bus->slv_wr_size >= I2C_HW_FIFO_SIZE)
> +			break;
> +		i2c_slave_event(bus->slave, I2C_SLAVE_READ_REQUESTED, &value);
> +		ind = (bus->slv_wr_ind + bus->slv_wr_size) % I2C_HW_FIFO_SIZE;
> +		bus->slv_wr_buf[ind] = value;
> +		bus->slv_wr_size++;
> +		i2c_slave_event(bus->slave, I2C_SLAVE_READ_PROCESSED, &value);
> +	}
> +	return I2C_HW_FIFO_SIZE - ret;
> +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
