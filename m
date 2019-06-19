Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB054BE07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Message-ID:Date:Mime-Version:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uLdV9Q8+cz1X9nXbWTiX6za1Hk1OjHVLKzTYD2XL1vc=; b=pbmq3LWrn1ZcCsKfPL/uKoQip
	y/watDZ1eU7y2Bm0p/aUtAsQY3FgNPZCLxNTDA1B08iDFN9ZNySfFjsW19T3ahGYX55RNjwQybFZk
	afqUo6jMkBVHgtE5yVJPx1ijxeX7LpPTLQfInwQyNPN3HzhI5dSVoZVKAgGe9ekidqAFek2757eYv
	TrsHtoUBfvuzPxGO2cbM1xB2FnEiG5nNir8YyNkrZYzgc3dExvQV+RLm4CcX/WYZtyQiLh3GxW7o+
	FHGizhrcSFY2ZDip5WRSeFy7Knb9KQcNLIAs/uUY4Q0piso+8Gj+pR+sgZRcjvazhX9Rg5Yo3jhUK
	FEeukvXXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddQd-0005Hy-Di; Wed, 19 Jun 2019 16:27:19 +0000
Received: from omr1.cc.ipv6.vt.edu ([2607:b400:92:8300:0:c6:2117:b0e]
 helo=omr1.cc.vt.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddQS-0005FQ-HN
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:27:10 +0000
Received: from mr4.cc.vt.edu (mail.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x5JGQtXc006782
 for <linux-arm-kernel@lists.infradead.org>; Wed, 19 Jun 2019 12:26:59 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x5JGQooS006421
 for <linux-arm-kernel@lists.infradead.org>; Wed, 19 Jun 2019 12:26:55 -0400
Received: by mail-qk1-f200.google.com with SMTP id i196so16199444qke.20
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 09:26:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=zf8D4/iHtP2cQ9qCWTeKz8g4gkGxClanrDvSj3UhfAg=;
 b=Bwbv0gcta8n/k2LfAmzak7DS0Oo90OeijLqWXlaR/6ejdqoeD2jVBDXQvnYNT03Idf
 wRnWgoX22SNOXNiquhIu7WKVfrR/HnI3kV24YfZPn9blrYgEr9ESh64DwewKWqwouX7x
 75sqhptKzjPJ/IVksTA7bUGwoWsS3nDfJziulVbAF2rGvPc5+zdDurboD8if7S/HT/fL
 9Q5C/lnUngjGzWFJp5IjUpiqMCJlpcO6woBUdzC+NtF54zWxGcyq+MF54oIOO34aewx/
 OgVQ/tNIKXuA2T38O6TxQT83DNup1GpTzw8ifs64Z8QzchBsn+HYCu5G8Qj72mhvkAq4
 o2fA==
X-Gm-Message-State: APjAAAVtdK1Ys/E6DOJ6eOCjU/6aZQOSkBHyot8HjCvUgpOzfHcCDHmN
 o9E5TPF7bNX87ymhf3lVGZPfn6KIqf6Xfsp2zJqjV/xuAhAFdQAfM0PBnx71mF17Ev3oaxez8FF
 RkGQvG2FH1AMQsjpmE2uyYDo0VPTtKXmj5yGdp5BL6Kbf+A==
X-Received: by 2002:a37:90c2:: with SMTP id
 s185mr51576928qkd.161.1560961610378; 
 Wed, 19 Jun 2019 09:26:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxH3bOZGy53aUzHFJaZeZ0VPGLDh7ReM6TxRcU6oSO7jcWufcggfBfs/wqUKe//XAKCkkKV1w==
X-Received: by 2002:a37:90c2:: with SMTP id
 s185mr51576904qkd.161.1560961610129; 
 Wed, 19 Jun 2019 09:26:50 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
 by smtp.gmail.com with ESMTPSA id z126sm11285820qkb.7.2019.06.19.09.26.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 09:26:48 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Pintu Agarwal <pintu.ping@gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
In-Reply-To: <CAOuPNLgYN3FDvNsaWqom45h7aFz=HczDdL-QoHOc_Sreqf8T2g@mail.gmail.com>
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
 <20190619150406.GB19346@kroah.com>
 <CAOuPNLgYN3FDvNsaWqom45h7aFz=HczDdL-QoHOc_Sreqf8T2g@mail.gmail.com>
Mime-Version: 1.0
Date: Wed, 19 Jun 2019 12:26:47 -0400
Message-ID: <22247.1560961607@turing-police>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_092708_722307_83EC9F1C 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2607:b400:92:8300:0:c6:2117:b0e listed in]
 [list.dnswl.org]
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
Cc: Kernelnewbies <kernelnewbies@kernelnewbies.org>, Greg KH <greg@kroah.com>,
 linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2335093633242263453=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2335093633242263453==
Content-Type: multipart/signed; boundary="==_Exmh_1560961607_1605P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1560961607_1605P
Content-Type: text/plain; charset=us-ascii

On Wed, 19 Jun 2019 20:47:34 +0530, Pintu Agarwal said:

> No I mean to say, there are lots of features and customization already
> done on this version and stabilized.
> Upgrading again may require months of effort.

This is what happens when you don't upstream your local changes.

And no, saying "But we're a small company and nobody cares" isn't an
excuse - Linux carried the entire Voyager architecture around for several years
for 2 machines. Not two models, 2 physical machines, the last 2 operational
systems of the product line.

(Not the Xubuntu-based Voyage distribution either - the Voyager was a mid-80s
SMP fault-tolerant system from NCR with up to 32 486/586 cores and 4G of
memory, which was a honking big system for the day...)

https://kernel.googlesource.com/pub/scm/linux/kernel/git/rzhang/linux/+/v2.6.20-rc1/Documentation/voyager.txt

The architecture was finally dropped in 2009 when enough hardware failures
had happened that James Bottomley was unable to create a bootable
system from the parts from both...

So if your production run is several thousand systems, that's *plenty* big
enough for patches and drivers (especially since drivers for hardware you
included in your several-thousand system run are also likely applicable to
a half dozen other vendors who made several thousand systems using the
same chipset....

--==_Exmh_1560961607_1605P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXQpiRgdmEQWDXROgAQLgiQ//UFBElVIVrz2j6hgbDsxrSxbNiWZ78XOp
zPJi/jWSZmMEt4QpNByA1Ll6udI5h7c3MprYyiFm3YCToErjrV24+LgkCNqGzV3g
23AY8/bqTjLnA10eT87df7SOdHkfw5CKH89LCEeq1RqK7UYIAN2CMT0MRaPQriD2
NwoJipNt5YamEDZcZEiVqLWtw2mmLTLEt+kZRg57m9scTrSF96Rg10VFzvA9yi2J
4RUBNmnGNTh/2qXjkIWa126v/jaYrcktuoaMYgUuVQnvZxb8K8VzkawE0yvyVhsV
Xn0B3WpNmg61Z9C23hmjSTw/XCn9a0vVXckDeoWYEI1fQgT1okgMQegHvtcUAniN
Bilmu9+FxVCdus0s4SnjH2jE7dIUXj328ys4imgMidBXxsSMpA6Iht+50/vgxKLV
XOkdffMF7aw3IWiLvsKagEybyq/1VYGnbmAU+h4GrJphs5Qs55J1CDLTGDcrUKqj
QSlr48Bs4fGgqiPYs9G5U7e1KXRJdcn8zhmx2HxvDudAqnXVKonxj9cvFqdxHs83
wWB4Bvp+DCksNVefEXpSXbZddKqmiU51F2lH8WMZ5dxhA/WN+r/oiMRh28gzS0yR
0xVbWJWDnca0Mn+hp0RioICxIljGiEvQTiWK9IrDj8zJpQNPCntCuqmYQ82bj8yB
8YAja57nMkE=
=641k
-----END PGP SIGNATURE-----

--==_Exmh_1560961607_1605P--


--===============2335093633242263453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2335093633242263453==--

