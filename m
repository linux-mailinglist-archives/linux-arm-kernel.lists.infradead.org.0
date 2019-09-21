Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E7EB9E45
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 16:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=sIcTxDTxqBgZoTGfTUbpWDE6SRcSduq9aWQPjVKH7as=; b=hB5
	vO/pT2agxLwyZm+NPYBK9Y81DODHztLMIKaAZaimBLznl8q9lPXDkuGfsKzPipzJsEgquUBQihRS+
	qd0qOaVnm5L9QIG9czbRND4z6VTJav3BLU70xjYmlpIwCns7UrUr4et5LvovHOdx3F9+QIScOf27O
	3fcX9exdNx4+J78seWOR3JtpJDQm/XmFJ70Nm+giYAcFlhcc3diiOhULMLBGsz2r8JBB8RkTtwlcY
	w2naniaP/5UlXvpmXKr7FuDhz7E+u52qkN71YvMIh75tsmmW3ULuZ3GG2M8+TJvv5RtekaIzxkXc5
	4pZYqaU6YF4go0hpluihPCZM7QXvWnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBgqV-0002CH-ME; Sat, 21 Sep 2019 14:58:47 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBgpy-0002BM-Hz; Sat, 21 Sep 2019 14:58:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so6450933pfr.3;
 Sat, 21 Sep 2019 07:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to;
 bh=rMu789LD1T8uU9KacNFi9FCRB7xCR3S38zLi0aGwMPk=;
 b=n35lnfvxCsApW2kK/lMjVc0YEBMnaP2lRsh3iZP3PqPJ2tV3sg11DolTl/kk9xyJde
 /ha5P/doLG5uKhkPQNY5bQt/JkPdzdAEqzqk3AkVfHXePMgjGLWFzx80KbrzYnZ78z7s
 oKFHDgAnjMCs0loyHFt1jjasbEjPENOE1nLRi9OkT3p6vUCxrLXzpNR/BOoFSGI+z9Y7
 4OaVoqk3tj5sFv/99bVXIE/7qHl3U+ulaMA5oy3DSGu7oxcstDO/eXPyv6MwtrqODYPG
 U1QjzItNO/Fqx18aXt3H2HDvTec+8NdgrenBqnlI0CejEldxq1YFrwkqsWEk6G5YoH8C
 mdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to;
 bh=rMu789LD1T8uU9KacNFi9FCRB7xCR3S38zLi0aGwMPk=;
 b=FayOMk9VmAvqouc0oHJGtun0UjDF1V9jXbwgftjRA4jRrPwVw5xF2OrxaWEvTTJjID
 SpAHYqvUDt+fWWSp+ji//ku41xvjFsaF///HVmqExxK1EaFUVOwd74HdKUYPfWpTplRK
 GJpEhTG2VSf0rWvN3IJG+ka6y3TvWpsvxsaX6vud6lvs7jSsGeCZyhbN+U1ZMt9aPtse
 PdzPeFKkrAj2DRJpf7C+6/TxCTyXNydIQd9PQvOTwUE7yKlzw7Bv9W14/VC6Bo1FpR93
 Crc1k6xZgld3m/qzKJLovo4BHFrJmWzF82gj1kRGo8OTN8Vl1EWonyb3xv4HSporQhe4
 Qg6w==
X-Gm-Message-State: APjAAAWhCoIm00X2TZksMPHIeuKkkccTaBHr74Vxg3s24PoaDIzDJu70
 a1uX2ji+ZP8yPXqti6W9npg=
X-Google-Smtp-Source: APXvYqzq1rGaqCGeV44c1S06GyiRUKXeYke/1wz8RtK+UwfNjVz8EIJCJF0JnYuM5kiFHQQ1VUVAJA==
X-Received: by 2002:a63:2224:: with SMTP id i36mr12763638pgi.135.1569077891943; 
 Sat, 21 Sep 2019 07:58:11 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.67])
 by smtp.gmail.com with ESMTPSA id r185sm5933695pfr.68.2019.09.21.07.58.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 07:58:10 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: dan.j.williams@intel.com, vkoul@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org, agross@kernel.org, sean.wang@mediatek.com,
 matthias.bgg@gmail.com, maxime.ripard@bootlin.com, wens@csie.org,
 lars@metafoo.de, afaerber@suse.de, manivannan.sadhasivam@linaro.org
Subject: Re: Re: [PATCH 0/9] added helper macros to remove duplicate code from
 probe functions of the platform drivers
Date: Sat, 21 Sep 2019 20:27:26 +0530
Message-Id: <2356e29bca5bdfa901534bb32a2782185eb0415f.1568909689.git.sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918102715.GO4392@vkoul-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_075814_621926_B795D16F 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sst2005[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sst2005[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 satendrasingh.thakur@hcl.com, dmaengine@vger.kernel.org,
 Satendra Singh Thakur <sst2005@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 3:57 PM, Vinod Koul wrote:
> On 15-09-19, 12:30, Satendra Singh Thakur wrote:
> > 1. For most of the platform drivers's probe include following steps
> > 
> > -memory allocation for driver's private structure
> > -getting io resources
> > -io remapping resources
> > -getting irq number
> > -registering irq
> > -setting driver's private data
> > -getting clock
> > -preparing and enabling clock
>
> And we have perfect set of APIs for these tasks!
Hi Vinod,
Thanks for the comments.
You are right, we already have set of APIs for these tasks.
The proposed macros combine the very same APIs to remove 
duplicate/redundant code.
A new driver author can use these macros to easily write probe 
function without having to worry about signatures of internal APIs.
In the past, people have combined some of them e.g.
a) clk_prepare_enable combines clk_prepare and clk_enable
b) devm_platform_ioremap_resource combines
platform_get_resource (for type IORESOURCE_MEM)
and devm_ioremap_resource
c) module_platform_driver macro encompasses module_init/exit 
and driver_register/unregister functions.
The basic idea is to simplyfy coding.
> > 2. We have defined a set of macros to combine some or all of
> > the above mentioned steps. This will remove redundant/duplicate
> > code in drivers' probe functions of platform drivers.
> 
> Why, how does it help and you do realize it also introduces bugs
This will make probe function shorter by removing repeated code.
This will also reduce bugs caused due to improper handling
of failure cases because of these reasons:
a) If the developer calls each API individualy one might miss
proper handling of the failure for some API; Whereas the macro
properly handles failure of each API.
b) Macros are devres compatible which leaves less room for
memory leaks.

Yes, the macros which enable clock and request irqs
might cause bugs if they are not used carefully.
For instance, enabling the clock or requesting the irq
earlier than actually required. So, the macros with _clk
and _irq, _all suffix should be used carefully.

Please let me know if I miss any specific type of bug
here.
> 
> > devm_platform_probe_helper(pdev, priv, clk_name);
> > devm_platform_probe_helper_clk(pdev, priv, clk_name);
> > devm_platform_probe_helper_irq(pdev, priv, clk_name,
> > irq_hndlr, irq_flags, irq_name, irq_devid);
> > devm_platform_probe_helper_all(pdev, priv, clk_name,
> > irq_hndlr, irq_flags, irq_name, irq_devid);
> > devm_platform_probe_helper_all_data(pdev, priv, clk_name,
> > irq_hndlr, irq_flags, irq_name, irq_devid);
> > 
> > 3. Code is made devres compatible (wherever required)
> > The functions: clk_get, request_irq, kzalloc, platform_get_resource
> > are replaced with their devm_* counterparts.
> 
> We already have devres APIs for people to use!
Yes, we have devres APIs and many drivers do use them.
But still there are many which don't use them.
The proposed macros provides just another way to use devres APIs.
> > 
> > 4. Few bugs are also fixed.
> 
> Which ones..?
The bug is that the failure of request_irq 
is not handled properly in mtk-hsdma.c. This is fixed in patch [5/9].
https://lkml.org/lkml/2019/9/15/35

Please let me know if I am missing something here.
Thanks
-Satendra 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
