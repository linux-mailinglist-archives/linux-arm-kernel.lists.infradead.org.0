Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514BD5B62A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 09:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vj4JzWcyWBQ+IJeRNfCUVnj7qtJxJ1/GWgZGD4U42qc=; b=kyxArngIqbAMlL
	0aJdIdLKsSXPkdpx8nF8uUh+StuTgq2zW26/anuNp6uj0oT0l0+rFoh3qr2qtU/8Z5u2+9HcfUcoN
	1FyfROVE8YhiqtrlG0GjgSgeiZNa/rqkpLGQEm5DzTvU0yHtyv9/MUqIbkubGMYcR0ZVXsXnKSh+/
	V2oj4ZoWEvRwauolvjAe0V0ecVCTnY7/XaF6M2tianeYk/QbMI15dXeTUL2bQROHjg6x6ir00AI/e
	GWzgzfukokeSsbq0fHv+6YEh3mmGbypW4K3Hx5sdo/L3HwbDge5UTqL41Wwp1EGCP7G/hYWRjbU1f
	Cc+svps2Wb6+wOldkmdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhr9m-0002mY-7U; Mon, 01 Jul 2019 07:55:22 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhr7V-0001UM-EE
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 07:53:02 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so1119572pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 00:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rdcIi2cumO41Y4zgqEx+RI7IBrTExhB5mGxaS338vMg=;
 b=EKBIvdtpU4JjTSu+btioEx6SVuPsS2YcCGeGEzSHD8Mqpbt3QjFzV01J0HGdAsZMxA
 miNJP3pvKvK5Vv+QBePJUFMAkF288+oNkNeqoj4C/DTPSCZQdZjVWd0S6PUHXogRcXUA
 LkI1bUyYnk4xpBuAeWcTqic5UQ5H/XSi+WrjJofVuO+MJwUy7qq5bH2UnIZDLsheczc/
 X2ynD5HruKB9PzJ8PJTO4+YJymag+fizsW1DpLODc4NNbZ/dfa3eAbp56Yy9ogNwHlIV
 UE7clsbPccJZVbnCX4wiWFeH+PNqnTE4xtfPm/R6metV6iITyl/Gz0sBO8kHFuSdzR0V
 VhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rdcIi2cumO41Y4zgqEx+RI7IBrTExhB5mGxaS338vMg=;
 b=RaDoBo/PRhE3Km4r0S+LqCGtqgXcZCaXsy74diwt4N5XZKoRHjqEuX3TBNVlRsTm6q
 m6T2zSQaYAhwjDksvhCwQz4SCnPbia1FKw5x94MvmeqBzcIiYsIN+8Cc2H7tOsp4yqQZ
 NMZvH5MqcNlATDl0SnvzePc3cE+YwZMOkOMj8KIF+3/AUe+T1WPv9QblWEqgsGQI2qtU
 5guxRxtK7dHV7XBrdzkM8uts6aPC9jL8JcnqTdydgIxgf+kO21QZ6d5Cf9/4x4oFuSbj
 H6CIJPlsLTEGvotd/WJ05h7ttJ8mdVjAZ6IvDBa0gqGVsp50tHZguvQJ73g2cgz7yi8j
 wBpw==
X-Gm-Message-State: APjAAAVQ32N2ePjKmka9CKHjsuIuVSJR55GC1YV5dkjdJzk8+q406l4b
 ioDkKUSw1RekrGvMQWv2szc=
X-Google-Smtp-Source: APXvYqz+5OQaUvqEiswzedP1HrM6edG/iaiLW0IB1Z0Zqu6vyMD+jY20kS9fCmT0tw3iTMQujMtKbQ==
X-Received: by 2002:a17:90a:3585:: with SMTP id
 r5mr30793616pjb.15.1561967578351; 
 Mon, 01 Jul 2019 00:52:58 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id t96sm8530996pjb.1.2019.07.01.00.52.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 00:52:57 -0700 (PDT)
Date: Mon, 1 Jul 2019 00:52:55 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH 2/4] input: keyboard/mouse/touchscreen/misc: Use
 dev_get_drvdata()
Message-ID: <20190701075255.GD172968@dtor-ws>
References: <20190701032342.25971-1-huangfq.daxian@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701032342.25971-1-huangfq.daxian@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_005301_554552_BFA357DF 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Richard Fontana <rfontana@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Anson Huang <anson.huang@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Luca Weiss <luca@z3ntu.xyz>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Brian Masney <masneyb@onstation.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-input@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Pascal PAILLET-LME <p.paillet@st.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, H Hartley Sweeten <hsweeten@visionengravers.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Christian Hoff <christian_hoff@gmx.net>,
 Enrico Weigelt <info@metux.net>, Gabriel Fernandez <gabriel.fernandez@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fuqian,

On Mon, Jul 01, 2019 at 11:23:12AM +0800, Fuqian Huang wrote:
> Using dev_get_drvdata directly.
> 

I prefer using proper bus accessors.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
