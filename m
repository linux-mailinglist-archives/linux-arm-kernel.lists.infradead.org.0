Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADBA136B4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y/5MC2rhCIeLcfL1ENfTvzNLMtLnak1R95EkiaPkTJU=; b=O+XtQG8YMNh36TnADZ7GMQBXb
	GlAuHAZ29tya6e/ZvadqBEMx/RQwvhCPYXel3Tbui/lTdJCfIVvFjPqSUPYfrjDzf7St/Sxz3yfm4
	gTfvRMiuCLUuTPv9sGF7guF7XGvV20fgag3hFJ8Z8ERUmAOq2kGsx5oGxqTsN3SWWxI70ywskK83J
	KPyz4YsFXxC/vf6mbREA4QwDNGx0Tdzz7CeV94rpRYlBQ/CYgPKoCQtES02qjM1V56jApObLjPOpu
	wD3Ma081PUAQjmDBlGjR2USxgTD+AQfo2zI1u+owYCJXtmQFglFJIK14XT05Lz4MNy4O4BhmnQEfR
	cBDEGknvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprrr-0008OI-G5; Fri, 10 Jan 2020 10:50:15 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprre-0007tq-8S; Fri, 10 Jan 2020 10:50:04 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 02:49:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,416,1571727600"; 
 d="gz'50?scan'50,208,50";a="254950336"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jan 2020 02:49:57 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iprrZ-00060w-6X; Fri, 10 Jan 2020 18:49:57 +0800
Date: Fri, 10 Jan 2020 18:48:58 +0800
From: kbuild test robot <lkp@intel.com>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH v7] mfd: mt6360: add pmic mt6360 driver
Message-ID: <202001101831.fuLAlv7d%lkp@intel.com>
References: <20200107153314.21486-1-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pqvlogas7gbsstv4"
Content-Disposition: inline
In-Reply-To: <20200107153314.21486-1-gene.chen.richtek@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_025002_381853_3BB7242D 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gene_chen@richtek.com, kbuild-all@lists.01.org, Wilma.Wu@mediatek.com,
 linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--pqvlogas7gbsstv4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Gene,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on ljones-mfd/for-mfd-next]
[also build test ERROR on v5.5-rc5 next-20200109]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Gene-Chen/mfd-mt6360-add-pmic-mt6360-driver/20200108-190516
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
config: openrisc-randconfig-a001-20200110 (attached as .config)
compiler: or1k-linux-gcc (GCC) 9.2.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=9.2.0 make.cross ARCH=openrisc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/mfd/mt6360-core.c: In function 'mt6360_pmu_probe':
   drivers/mfd/mt6360-core.c:350:12: error: 'IRQF_TRIGGER_FALLING' undeclared (first use in this function); did you mean 'IRQD_TRIGGER_MASK'?
     350 |            IRQF_TRIGGER_FALLING, 0,
         |            ^~~~~~~~~~~~~~~~~~~~
         |            IRQD_TRIGGER_MASK
   drivers/mfd/mt6360-core.c:350:12: note: each undeclared identifier is reported only once for each function it appears in
   drivers/mfd/mt6360-core.c: In function 'mt6360_pmu_suspend':
>> drivers/mfd/mt6360-core.c:388:3: error: implicit declaration of function 'enable_irq_wake' [-Werror=implicit-function-declaration]
     388 |   enable_irq_wake(i2c->irq);
         |   ^~~~~~~~~~~~~~~
   drivers/mfd/mt6360-core.c: In function 'mt6360_pmu_resume':
>> drivers/mfd/mt6360-core.c:399:3: error: implicit declaration of function 'disable_irq_wake' [-Werror=implicit-function-declaration]
     399 |   disable_irq_wake(i2c->irq);
         |   ^~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors

vim +/enable_irq_wake +388 drivers/mfd/mt6360-core.c

   316	
   317	static int mt6360_pmu_probe(struct i2c_client *client)
   318	{
   319		struct mt6360_pmu_data *mpd;
   320		unsigned int reg_data;
   321		int i, ret;
   322	
   323		mpd = devm_kzalloc(&client->dev, sizeof(*mpd), GFP_KERNEL);
   324		if (!mpd)
   325			return -ENOMEM;
   326	
   327		mpd->dev = &client->dev;
   328		i2c_set_clientdata(client, mpd);
   329	
   330		mpd->regmap = devm_regmap_init_i2c(client, &mt6360_pmu_regmap_config);
   331		if (IS_ERR(mpd->regmap)) {
   332			dev_err(&client->dev, "Failed to register regmap\n");
   333			return PTR_ERR(mpd->regmap);
   334		}
   335	
   336		ret = regmap_read(mpd->regmap, MT6360_PMU_DEV_INFO, &reg_data);
   337		if (ret) {
   338			dev_err(&client->dev, "Device not found\n");
   339			return ret;
   340		}
   341	
   342		mpd->chip_rev = reg_data & CHIP_REV_MASK;
   343		if (mpd->chip_rev != CHIP_VEN_MT6360) {
   344			dev_err(&client->dev, "Device not supported\n");
   345			return -ENODEV;
   346		}
   347	
   348		mt6360_pmu_irq_chip.irq_drv_data = mpd;
   349		ret = devm_regmap_add_irq_chip(&client->dev, mpd->regmap, client->irq,
 > 350					       IRQF_TRIGGER_FALLING, 0,
   351					       &mt6360_pmu_irq_chip, &mpd->irq_data);
   352		if (ret) {
   353			dev_err(&client->dev, "Failed to add Regmap IRQ Chip\n");
   354			return ret;
   355		}
   356	
   357		mpd->i2c[0] = client;
   358		for (i = 1; i < MT6360_SLAVE_MAX; i++) {
   359			mpd->i2c[i] = devm_i2c_new_dummy_device(&client->dev,
   360								client->adapter,
   361								mt6360_slave_addr[i]);
   362			if (IS_ERR(mpd->i2c[i])) {
   363				dev_err(&client->dev,
   364					"Failed to get new dummy I2C device for address 0x%x",
   365					mt6360_slave_addr[i]);
   366				return PTR_ERR(mpd->i2c[i]);
   367			}
   368			i2c_set_clientdata(mpd->i2c[i], mpd);
   369		}
   370	
   371		ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_AUTO,
   372					   mt6360_devs, ARRAY_SIZE(mt6360_devs), NULL,
   373					   0, regmap_irq_get_domain(mpd->irq_data));
   374		if (ret) {
   375			dev_err(&client->dev,
   376				"Failed to register subordinate devices\n");
   377			return ret;
   378		}
   379	
   380		return 0;
   381	}
   382	
   383	static int __maybe_unused mt6360_pmu_suspend(struct device *dev)
   384	{
   385		struct i2c_client *i2c = to_i2c_client(dev);
   386	
   387		if (device_may_wakeup(dev))
 > 388			enable_irq_wake(i2c->irq);
   389	
   390		return 0;
   391	}
   392	
   393	static int __maybe_unused mt6360_pmu_resume(struct device *dev)
   394	{
   395	
   396		struct i2c_client *i2c = to_i2c_client(dev);
   397	
   398		if (device_may_wakeup(dev))
 > 399			disable_irq_wake(i2c->irq);
   400	
   401		return 0;
   402	}
   403	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--pqvlogas7gbsstv4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
sj3WgeePAQA=

--pqvlogas7gbsstv4
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--pqvlogas7gbsstv4--

