Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE8A1300DC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 05:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3DR38zOhT2ZbE39GuevATsGoobCsEDfqQAil15UlTu0=; b=a76/Miqfu5jmV/pRb6M0k977a
	ZnlLNasD+es8nY9QGD8vZAr5SU9jzDQYawErADoHCd2/zmv406gyy4rYlGrhR+C0FwyKkEJFmDq9O
	FfJzU0iPtHklyRo32MXen27kX1BJjxUwjBrnbW7vRoSUNcoRqFkb0NFLbwzLKBhHSMSmXv1mc3K20
	YWGGzWGhfL9obh6n9lRISulc3oeZ34TkSDJW/jPaUWGzqplIW+SP7BSfe8XL0FyBZkqsFgGSRgmgy
	xnGPec83ZviH4zK5zZMAITOehF5TZ4lt1NzyB8zIgd2JDVtV7f2Q8bPNh6prShp3oSP/xXATHOiMm
	CD3zEsLxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inbQv-0002dz-0q; Sat, 04 Jan 2020 04:53:05 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inbQm-0002dZ-AT
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 04:52:58 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 20:52:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,393,1571727600"; 
 d="gz'50?scan'50,208,50";a="421622119"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jan 2020 20:52:53 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1inbQj-0002Qw-67; Sat, 04 Jan 2020 12:52:53 +0800
Date: Sat, 4 Jan 2020 12:52:49 +0800
From: kbuild test robot <lkp@intel.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH] tty: st-asc: switch to using devm_fwnode_gpiod_get()
Message-ID: <202001041214.X9EQCdU4%lkp@intel.com>
References: <20200103012053.GA1968@dtor-ws>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="miyotwxl663fl6ss"
Content-Disposition: inline
In-Reply-To: <20200103012053.GA1968@dtor-ws>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_205256_406513_4881CFA0 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild-all@lists.01.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--miyotwxl663fl6ss
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dmitry,

I love your patch! Yet something to improve:

[auto build test ERROR on tty/tty-testing]
[also build test ERROR on v5.5-rc4 next-20191220]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Dmitry-Torokhov/tty-st-asc-switch-to-using-devm_fwnode_gpiod_get/20200104-090945
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git tty-testing
config: x86_64-randconfig-a002-20200102 (attached as .config)
compiler: gcc-7 (Debian 7.5.0-3) 7.5.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/tty/serial/st-asc.c: In function 'asc_set_termios':
>> drivers/tty/serial/st-asc.c:570:13: error: implicit declaration of function 'of_fwhandle_node'; did you mean 'of_match_node'? [-Werror=implicit-function-declaration]
                of_fwhandle_node(np),
                ^~~~~~~~~~~~~~~~
                of_match_node
   drivers/tty/serial/st-asc.c:570:13: warning: passing argument 2 of 'devm_fwnode_gpiod_get' makes pointer from integer without a cast [-Wint-conversion]
   In file included from drivers/tty/serial/st-asc.c:25:0:
   include/linux/gpio/consumer.h:560:19: note: expected 'struct fwnode_handle *' but argument is of type 'int'
    struct gpio_desc *devm_fwnode_gpiod_get(struct device *dev,
                      ^~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors

vim +570 drivers/tty/serial/st-asc.c

   502	
   503	static void asc_set_termios(struct uart_port *port, struct ktermios *termios,
   504				    struct ktermios *old)
   505	{
   506		struct asc_port *ascport = to_asc_port(port);
   507		struct device_node *np = port->dev->of_node;
   508		struct gpio_desc *gpiod;
   509		unsigned int baud;
   510		u32 ctrl_val;
   511		tcflag_t cflag;
   512		unsigned long flags;
   513	
   514		/* Update termios to reflect hardware capabilities */
   515		termios->c_cflag &= ~(CMSPAR |
   516				 (ascport->hw_flow_control ? 0 : CRTSCTS));
   517	
   518		port->uartclk = clk_get_rate(ascport->clk);
   519	
   520		baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
   521		cflag = termios->c_cflag;
   522	
   523		spin_lock_irqsave(&port->lock, flags);
   524	
   525		/* read control register */
   526		ctrl_val = asc_in(port, ASC_CTL);
   527	
   528		/* stop serial port and reset value */
   529		asc_out(port, ASC_CTL, (ctrl_val & ~ASC_CTL_RUN));
   530		ctrl_val = ASC_CTL_RXENABLE | ASC_CTL_FIFOENABLE;
   531	
   532		/* reset fifo rx & tx */
   533		asc_out(port, ASC_TXRESET, 1);
   534		asc_out(port, ASC_RXRESET, 1);
   535	
   536		/* set character length */
   537		if ((cflag & CSIZE) == CS7) {
   538			ctrl_val |= ASC_CTL_MODE_7BIT_PAR;
   539		} else {
   540			ctrl_val |= (cflag & PARENB) ?  ASC_CTL_MODE_8BIT_PAR :
   541							ASC_CTL_MODE_8BIT;
   542		}
   543	
   544		/* set stop bit */
   545		ctrl_val |= (cflag & CSTOPB) ? ASC_CTL_STOP_2BIT : ASC_CTL_STOP_1BIT;
   546	
   547		/* odd parity */
   548		if (cflag & PARODD)
   549			ctrl_val |= ASC_CTL_PARITYODD;
   550	
   551		/* hardware flow control */
   552		if ((cflag & CRTSCTS)) {
   553			ctrl_val |= ASC_CTL_CTSENABLE;
   554	
   555			/* If flow-control selected, stop handling RTS manually */
   556			if (ascport->rts) {
   557				devm_gpiod_put(port->dev, ascport->rts);
   558				ascport->rts = NULL;
   559	
   560				pinctrl_select_state(ascport->pinctrl,
   561						     ascport->states[DEFAULT]);
   562			}
   563		} else {
   564			/* If flow-control disabled, it's safe to handle RTS manually */
   565			if (!ascport->rts && ascport->states[NO_HW_FLOWCTRL]) {
   566				pinctrl_select_state(ascport->pinctrl,
   567						     ascport->states[NO_HW_FLOWCTRL]);
   568	
   569				gpiod = devm_fwnode_gpiod_get(port->dev,
 > 570							      of_fwhandle_node(np),
   571							      "rts",
   572							      GPIOD_OUT_LOW,
   573							      np->name);
   574				if (!IS_ERR(gpiod))
   575					ascport->rts = gpiod;
   576			}
   577		}
   578	
   579		if ((baud < 19200) && !ascport->force_m1) {
   580			asc_out(port, ASC_BAUDRATE, (port->uartclk / (16 * baud)));
   581		} else {
   582			/*
   583			 * MODE 1: recommended for high bit rates (above 19.2K)
   584			 *
   585			 *                   baudrate * 16 * 2^16
   586			 * ASCBaudRate =   ------------------------
   587			 *                          inputclock
   588			 *
   589			 * To keep maths inside 64bits, we divide inputclock by 16.
   590			 */
   591			u64 dividend = (u64)baud * (1 << 16);
   592	
   593			do_div(dividend, port->uartclk / 16);
   594			asc_out(port, ASC_BAUDRATE, dividend);
   595			ctrl_val |= ASC_CTL_BAUDMODE;
   596		}
   597	
   598		uart_update_timeout(port, cflag, baud);
   599	
   600		ascport->port.read_status_mask = ASC_RXBUF_DUMMY_OE;
   601		if (termios->c_iflag & INPCK)
   602			ascport->port.read_status_mask |= ASC_RXBUF_FE | ASC_RXBUF_PE;
   603		if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
   604			ascport->port.read_status_mask |= ASC_RXBUF_DUMMY_BE;
   605	
   606		/*
   607		 * Characters to ignore
   608		 */
   609		ascport->port.ignore_status_mask = 0;
   610		if (termios->c_iflag & IGNPAR)
   611			ascport->port.ignore_status_mask |= ASC_RXBUF_FE | ASC_RXBUF_PE;
   612		if (termios->c_iflag & IGNBRK) {
   613			ascport->port.ignore_status_mask |= ASC_RXBUF_DUMMY_BE;
   614			/*
   615			 * If we're ignoring parity and break indicators,
   616			 * ignore overruns too (for real raw support).
   617			 */
   618			if (termios->c_iflag & IGNPAR)
   619				ascport->port.ignore_status_mask |= ASC_RXBUF_DUMMY_OE;
   620		}
   621	
   622		/*
   623		 * Ignore all characters if CREAD is not set.
   624		 */
   625		if (!(termios->c_cflag & CREAD))
   626			ascport->port.ignore_status_mask |= ASC_RXBUF_DUMMY_RX;
   627	
   628		/* Set the timeout */
   629		asc_out(port, ASC_TIMEOUT, 20);
   630	
   631		/* write final value and enable port */
   632		asc_out(port, ASC_CTL, (ctrl_val | ASC_CTL_RUN));
   633	
   634		spin_unlock_irqrestore(&port->lock, flags);
   635	}
   636	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--miyotwxl663fl6ss
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--miyotwxl663fl6ss
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--miyotwxl663fl6ss--

