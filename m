Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C377156B56
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 17:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TTBHMd6xbHOnKRssDu9Doz4uerY6JmZka59WziJVHTo=; b=nAE5lTScKtIZmB
	VvlmnRwEeLST1dx7/ZleH1c8W372YUNli/0yToPUcQIcZRpDLx8dIZEyiA3UrwNW5y9fbMMdHSbqu
	pS6R9vd0hprEKunVbwxEFilygCOR8wnV3subGcRZdqHbVEz/wWiKNuWy5jOa+92Os2Rdavg6QA8a/
	vaod0tZ99XWojgf2hyZHC9GDSVcqRq652pttXoJmpPSUwLZZ05Yx/ISIcxoM2zM0yhbVhekXMsNya
	5BwmxrEsrBqsOYgqUICyeO39KVIkfaOGAr5ScFefnU+W4VXGV9XHUCFyZyfck20OO+/oiBs+PrGmi
	fFw5OpFqHpnRWw5qJdDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0pTZ-0004JV-ON; Sun, 09 Feb 2020 16:30:29 +0000
Received: from smtpout.aon.at ([195.3.96.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0pTS-0004J0-RZ
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 16:30:24 +0000
Received: (qmail 22436 invoked from network); 9 Feb 2020 16:30:15 -0000
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 WARSBL608.highway.telekom.at
X-Spam-Level: 
Received: from 91-114-188-72.adsl.highway.telekom.at (HELO DESKTOP26LQET5)
 ([91.114.188.72]) (envelope-sender <stefan-lehner@aon.at>)
 by smarthub85.res.a1.net (qmail-ldap-1.03) with DHE-RSA-AES256-GCM-SHA384
 encrypted SMTP
 for <linux-arm-kernel@lists.infradead.org>; 9 Feb 2020 16:30:15 -0000
X-A1Mail-Track-Id: 1581265815:22426:smarthub85:91.114.188.72:1
From: "Stefan Lehner" <stefan-lehner@aon.at>
To: <linux-arm-kernel@lists.infradead.org>
Subject: Kernel 3.16.81 missing include in drivers/pcmcia/sa1111_jornada720.c
Date: Sun, 9 Feb 2020 17:30:15 +0100
Message-ID: <000001d5df66$36058f90$a210aeb0$@at>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdXfZjXFIAwGXff9TsGw9hWGJ1mIFg==
Content-Language: de-at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_083023_201250_49E7EAAF 
X-CRM114-Status: UNSURE (   3.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [195.3.96.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [stefan-lehner[at]aon.at]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.3.96.115 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!
When building the Kernel 3.16.81 with SA-1111 support "CONFIG_SA1111=y" it
fails with an error. Reason for that is a missing include in
drivers/pcmcia/sa1111_jornada720.c
I had to add "#include <linux/io.h>" to this file.


Errors:

In file included from drivers/pcmcia/sa1111_jornada720.c:13:0:
drivers/pcmcia/sa1111_jornada720.c: In function 'pcmcia_jornada720_init':
arch/arm/mach-sa1100/include/mach/hardware.h:35:4: error: implicit
declaration of function 'IOMEM'; did you mean 'ENOMEM'?
[-Werror=implicit-function-declaration]
    IOMEM( (((x)&0x00ffffff) | (((x)&0x30000000)>>VIO_SHIFT)) + VIO_BASE )
    ^
arch/arm/mach-sa1100/include/mach/hardware.h:61:56: note: in expansion of
macro 'io_p2v'
 # define __REG(x) (*((volatile unsigned long __iomem *)io_p2v(x)))
                                                        ^~~~~~
arch/arm/mach-sa1100/include/mach/SA-1100.h:1142:15: note: in expansion of
macro '__REG'
 #define GRER  __REG(0x90040010)  /* GPIO Rising-Edge detect Reg.    */
               ^~~~~
drivers/pcmcia/sa1111_jornada720.c:101:3: note: in expansion of macro 'GRER'
   GRER |= 0x00000002;
   ^~~~
drivers/pcmcia/sa1111_jornada720.c:104:21: warning: passing argument 1 of
'sa1111_set_io_dir' from incompatible pointer type
[-Wincompatible-pointer-types]
   sa1111_set_io_dir(dev, pin, 0, 0);
                     ^~~
In file included from drivers/pcmcia/sa1111_jornada720.c:14:0:
./arch/arm/include/asm/hardware/sa1111.h:463:6: note: expected 'struct
sa1111_dev *' but argument is of type 'struct device *'
 void sa1111_set_io_dir(struct sa1111_dev *sadev, unsigned int bits,
unsigned int dir, unsigned int sleep_dir);
      ^~~~~~~~~~~~~~~~~
drivers/pcmcia/sa1111_jornada720.c:105:17: warning: passing argument 1 of
'sa1111_set_io' from incompatible pointer type
[-Wincompatible-pointer-types]
   sa1111_set_io(dev, pin, 0);
                 ^~~
In file included from drivers/pcmcia/sa1111_jornada720.c:14:0:
./arch/arm/include/asm/hardware/sa1111.h:464:6: note: expected 'struct
sa1111_dev *' but argument is of type 'struct device *'
 void sa1111_set_io(struct sa1111_dev *sadev, unsigned int bits, unsigned
int v);
      ^~~~~~~~~~~~~
drivers/pcmcia/sa1111_jornada720.c:106:23: warning: passing argument 1 of
'sa1111_set_sleep_io' from incompatible pointer type
[-Wincompatible-pointer-types]
   sa1111_set_sleep_io(dev, pin, 0);
                       ^~~
In file included from drivers/pcmcia/sa1111_jornada720.c:14:0:
./arch/arm/include/asm/hardware/sa1111.h:465:6: note: expected 'struct
sa1111_dev *' but argument is of type 'struct device *'
 void sa1111_set_sleep_io(struct sa1111_dev *sadev, unsigned int bits,
unsigned int v);
      ^~~~~~~~~~~~~~~~~~~
drivers/pcmcia/sa1111_jornada720.c:109:27: warning: passing argument 1 of
'sa1111_pcmcia_add' from incompatible pointer type
[-Wincompatible-pointer-types]
   ret = sa1111_pcmcia_add(dev, &jornada720_pcmcia_ops,
                           ^~~
In file included from drivers/pcmcia/sa1111_jornada720.c:17:0:
drivers/pcmcia/sa1111_generic.h:15:5: note: expected 'struct sa1111_dev *'
but argument is of type 'struct device *'
 int sa1111_pcmcia_add(struct sa1111_dev *dev, struct pcmcia_low_level *ops,
     ^~~~~~~~~~~~~~~~~
cc1: some warnings being treated as errors
scripts/Makefile.build:257: recipe for target
'drivers/pcmcia/sa1111_jornada720.o' failed
make[3]: *** [drivers/pcmcia/sa1111_jornada720.o] Error 1
scripts/Makefile.build:404: recipe for target 'drivers/pcmcia' failed
make[2]: *** [drivers/pcmcia] Error 2
Makefile:914: recipe for target 'drivers' failed
make[1]: *** [drivers] Error 2
Makefile:526: recipe for target '__build_one_by_one' failed
make: *** [__build_one_by_one] Error 2


Regards
Stefan Lehner


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
