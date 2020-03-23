Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A476718F928
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 17:02:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhkdAMHHcpOWLQLw+rwoRzWieJ4keQdlvnpR7Byna2I=; b=J4aFfy2G4oelC/
	hVSJc62tSh45fS1dHnAMnDCM7O7rclfX1Ac1JMxvO8GGckjf3n8Tr2+89W0UDdBbR0a5lxnMySr9s
	JM1/n7xSpmXtWjrd+OYH1qFtWiFcbADMufqRnjaBZv3Ypf8AK24Ngc3md0czfWw4/JSLmmBilqIO+
	M6biivZtDRzEaxVYFAV36WC6iywpoGd6Xl7iQcl7I1IqiiVHbWnW+dpAltZoKQyh9Y8iuo3RgEyra
	d2NUVE0Z2a6Isv2zDsoziL7wp7yutW0m+I807dDi7j1eFlpUtYpj4+4MyiyXkWyXXuwTISPAiK0yu
	EfHQhJMF0wyc1Ls8/7sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGPWj-0004yG-VY; Mon, 23 Mar 2020 16:02:09 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGPWb-0004xL-Hl
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 16:02:02 +0000
IronPort-SDR: yOjZCdbDYIoLdJulWJHMb9WA18QmvmkTqh1v92dCqZilPXHMBb0xT0AY5h2ItiXEqn0tcvMBAg
 MpyO0x+1s2aA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 09:02:00 -0700
IronPort-SDR: phtAgXXYbKsiJe/zuUmNdIE1gUiEZCE8YR7T4VrWwwkSIrwsF2/9wxBJwxSQMlx+2lPFi5ZkMR
 RMlpw1k/n3nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="264820911"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga002.jf.intel.com with ESMTP; 23 Mar 2020 09:01:56 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jGPWY-00CHV3-M7; Mon, 23 Mar 2020 18:01:58 +0200
Date: Mon, 23 Mar 2020 18:01:58 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v9 3/3] i2c: npcm7xx: Add support for slave mode for
 Nuvoton
Message-ID: <20200323160158.GR1922688@smile.fi.intel.com>
References: <20200323134437.259210-1-tali.perry1@gmail.com>
 <20200323134437.259210-4-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323134437.259210-4-tali.perry1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_090201_607126_30DE228E 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 wsa@the-dreams.de, brendanhiggins@google.com, linux-kernel@vger.kernel.org,
 kfting@nuvoton.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 03:44:37PM +0200, Tali Perry wrote:
> Add support for slave mode for Nuvoton
> NPCM BMC I2C controller driver.

Same comments apply as per previous patch.

...

> +#if IS_ENABLED(CONFIG_I2C_SLAVE)

Perhaps create a separate module and compile it when user selects?
See I=B2C DesignWare split.

...

> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +	if (bus->slave) {
> +		npcm_i2c_slave_enable_l(bus, I2C_SLAVE_ADDR1, bus->slave->addr,
> +					true);
> +	}

Put it on one line and drop {} -- it will be much better to read.

> +#endif

...

> +static void npcm_i2c_write_to_fifo_slave(struct npcm_i2c *bus,
> +					 u16 max_bytes_to_send)
> +{
> +	// Fill the FIFO, while the FIFO is not full and there are more bytes to
> +	// write
> +	npcm_i2c_clear_fifo_int(bus);
> +	npcm_i2c_clear_tx_fifo(bus);
> +	iowrite8(0, bus->reg + NPCM_I2CTXF_CTL);
> +
> +	while ((max_bytes_to_send--) && (I2C_HW_FIFO_SIZE -
> +					 npcm_i2c_get_fifo_fullness(bus))) {
> +		if (bus->slv_wr_size > 0) {
> +			npcm_i2c_wr_byte(bus,
> +					 bus->slv_wr_buf[bus->slv_wr_ind %
> +					 I2C_HW_FIFO_SIZE]);
> +			bus->slv_wr_ind =3D (bus->slv_wr_ind + 1) %
> +					   I2C_HW_FIFO_SIZE;
> +			bus->slv_wr_size--; // size indicates the # of bytes in
> +					    // the SW FIFO, not HW.
> +		} else {
> +			break;
> +		}

This looks ugly. Can you redo the style.

> +	}
> +}

...

> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +			if (bus->slave) {
> +				bus->slv_rd_buf[bus->slv_rd_ind %
> +						I2C_HW_FIFO_SIZE] =3D data;
> +				bus->slv_rd_ind++;
> +				if (bus->slv_rd_ind =3D=3D 1 && bus->read_block_use)
> +					// 1st byte is length in block protocol
> +					bus->slv_rd_size =3D data +
> +							   (u8)bus->PEC_use +
> +							(u8)bus->read_block_use;
> +			}
> +#endif

Ditto.

...

>  		   I2C_FUNC_SMBUS_EMUL |
>  		   I2C_FUNC_SMBUS_BLOCK_DATA |
>  		   I2C_FUNC_SMBUS_PEC
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +		   | I2C_FUNC_SLAVE
> +#endif

Completely inconsistent style.

>  		   ;

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
