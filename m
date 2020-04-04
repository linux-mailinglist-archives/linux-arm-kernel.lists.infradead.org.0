Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BF219E700
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 20:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Content-Type:MIME-Version:Message-ID:Date:Subject:In-Reply-To:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3sIaK5zuf/YVP6RA9dV4S9T5qK3jUY6BGnGCr6hqt5g=; b=ASXVXcsnM08lXJUV2SY5+mPAJ
	oHKjU/DAYNke/Qop6WQQultsI5nw0De+7WFll1qpcl51/EXiV95/ciFu/BI334UaPTcfn0oujRNs4
	NBG4DTPDgugd62/nV6g2Owb91xRpbWjSgFGXWtOBR2YGGCxQY4WlOXNToPi+jkYX15p69wUJg5M6l
	2Jm9HhfLH1fXPGqZ3X4RCqqpRC5U+kggCfIdCMGEc43uAJd1wqSH6vYUzvPk2uMHPJtyEZH1W7XNX
	d86pE8AsGrKbGXx98sZ/i8815/BRljiITAXtpimDjdfghnFmTP5H2PbXh4l49rEz8EOYYLUsm7DJ3
	F4T2XSc8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKnKZ-0006XP-Ij; Sat, 04 Apr 2020 18:15:43 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKnKS-0006Wc-47
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 18:15:38 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200404181532epoutp02feb5dff954209cf9dec26b9e72ebdbaf~CsIuUSXKR2849428494epoutp02I
 for <linux-arm-kernel@lists.infradead.org>;
 Sat,  4 Apr 2020 18:15:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200404181532epoutp02feb5dff954209cf9dec26b9e72ebdbaf~CsIuUSXKR2849428494epoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586024132;
 bh=5vYBTyXJGbsgswvWHnueDWMawgGk8MDBr++Km8ix618=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=gcR7MzQixVCL18k/zM4KdFp8AzEGryIxas4uKiMbPQFq2b5AQ+ByPLQu2K6eMgau1
 VSyBM2Vq5dthbDO/jWkc0Fse68Lw8JswjE8oYxa8QQ3qAc2SXIDocuIydRhtDyca0B
 J9bxbjiVrH0Vyo52ZR2hoITbGum4Wwd9KXWvfZsc=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200404181531epcas5p37481dfbbb374b8cf2ea49f348516bd81~CsItGROYB1302713027epcas5p3a;
 Sat,  4 Apr 2020 18:15:31 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 38.80.04778.2CEC88E5; Sun,  5 Apr 2020 03:15:30 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200404181530epcas5p1626022d953c9c694e69052fb429c0d91~CsIsg2WRr0733107331epcas5p1e;
 Sat,  4 Apr 2020 18:15:30 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200404181530epsmtrp11ac5d7ef78b5f851f96ffd73a63961f5~CsIsf58U21392013920epsmtrp1P;
 Sat,  4 Apr 2020 18:15:30 +0000 (GMT)
X-AuditID: b6c32a4a-33bff700000012aa-39-5e88cec24485
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BA.EC.04158.2CEC88E5; Sun,  5 Apr 2020 03:15:30 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200404181527epsmtip2f06f15a94d9e2fb82b2be6eab1a2e0d6~CsIpZwkk50776007760epsmtip2T;
 Sat,  4 Apr 2020 18:15:26 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: =?utf-8?Q?'Pawe=C5=82_Chmiel'?= <pawel.mikolaj.chmiel@gmail.com>,
 <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>
In-Reply-To: <1182150aff8140a82af17979a09c81676c719e2f.camel@gmail.com>
Subject: RE: [PATCH v4 5/5] arm64: dts: Add node for ufs exynos7
Date: Sat, 4 Apr 2020 23:45:24 +0530
Message-ID: <000001d60aad$05e7b6e0$11b724a0$@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="----=_NextPart_000_0001_01D60ADB.1FA12B60"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKI+vJzlUBp7WIi19k8pRZBKIHK2gKUSzVAA7h3SyUCe2DDmwIWY0ZDAq0rcFAB9QhIPQKG0ufBpnMjnJA=
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGc2emMwNSMxaDR4iKFeMWFrdkNKg1UZy4JLzogxi0yhURKLUF
 t7g0ApVSqKgYsaJClGqKBkTEgiCksj5YFAQDCSoKKrhDNFaI2nZqwtt3zvn/s9xclpQV0oFs
 gioVa1TKJDntS1U9XjA/1O7Iio3Ibub5IWcXzY+UWST8tUaHhG9vL2f4nsomiq942y3hO2sK
 ab6g/RHBG1/YaP5myx+C/9ViIvnMukaGL7nfgxRSodOUSwjV5j5GqLAaaOHejZNCRls9JXwf
 7KUEU6UVCaMVM4XTDUYi2me7b2QcTko4iDXhq3f57stwlpDqR/nosOV1A6ND1jyUjXxY4JZB
 ce1jiZtl3EMEtiZFNvJ18QiCK086GTH4iWCodoT67/h88w0hFuoQnNKX02LwCUHd+HvCraK5
 ULBd13sKUzkzgvRWncdCcgYCbl/LJ90qH24DmL4aPNP9OQX036r3uCkuBGrv6Dx5KbcCHB2d
 pMhToO3SgGcPktsKBeUF3p2CwTlocelZ17TdUGvaK0qmQZMzh3TPBe4lA5c/2L36dTBaWEaI
 7A/DLZWMyIEwdEbPuPsAlwg5NUvF9DEoudrsta6BhueF3hUmQ+7YACHKpZCll4mSuZD+pcsr
 D4KzRqNEZAGqSp9637qXhI4fAXko2DzhMPOEw8wTLhB5EViKP7qYdfECKKsJF9MKMBv6aZFn
 Q76xnxF5FQx3pzNFiLWi6VitTY7H2uXqJSp8KEyrTNamqeLD9qQkVyDPP1240YYsjs12xLFI
 7iflL2TFyiTKg9ojyXYU4ur1prz0KQqkVCkqLJ8qXVuQGSuTximPHMWalJ2atCSstaMglpJP
 k56TdO2QcfHKVJyIsRpr/lcJ1idQhyInzbLhsqiAix2K9aveNXefH2sNGW/5PDBaQu7debUn
 KjNnRlHVyldpa04oMN13/64ab5lyftvvM/tnmv+GSm2anuHqA0FxMZvWOebsiW7MiKWsx+d9
 y382ubHBkO0XY+kbx21j3c8H8aUH+GTEUPVbXdIyp/8smbpYP7p9hmVxnZzS7lMuXkhqtMp/
 SIh8+a8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAIsWRmVeSWpSXmKPExsWy7bCSvO6hcx1xBjO+C1i8/HmVzeLT+mWs
 FvOPnGO1OH9+A7vFzS1HWSw2Pb7GanF51xw2ixnn9zFZdF/fwWax/Pg/Josfx/uYLVr3HmG3
 WLr1JqMDr8flvl4mj52z7rJ7bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0ePzJjmP9gPdTAGc
 UVw2Kak5mWWpRfp2CVwZ9391sRXMLKzYPOUJSwPjxdguRk4OCQETibfLHzGB2EICuxklNizW
 h4hLS1zfOIEdwhaWWPnvOZDNBVTzilHi3rPrbCAJNgFdiR2L29hAEiICcxgllnxtAZvELDCZ
 SWLpTX6IjjPMEi+fXQBLcAq4S/S972QFsYUFHCQertgPFmcRUJHYs7YBLM4rYClx7tJlZghb
 UOLkzCcsEENDJWZsmMECcZKCxM+ny4DqOYA2J0ns6UuDKBGXOPqzh3kCo9AsJN2zkHTPQlIG
 YWtLPL35lAXGXrbwNVTcSWLtvGPMqOIcQLa9xI+DDgsYOVYxSqYWFOem5xYbFhjlpZbrFSfm
 Fpfmpesl5+duYgTHvZbWDsYTJ+IPMQpwMCrx8FpM7YgTYk0sK67MPcSoAjTq0YbVFxilWPLy
 81KVRHgdZ7TGCfGmJFZWpRblxxeV5qQWH2KU5mBREueVzz8WKSSQnliSmp2aWpBaBJNl4uCU
 amBc8HPeUk4jFkX3KZNOnfi8617pdH0tydMz/iyS59svJ2vSc7nPasXpan+bZUwq7htmr1hf
 e7nOe76EXPCsnyx1J4JTPBckz/t7q7Fn4YO2Be3hj8q2bEl5dZIxQlM4JNDs36odLvseb8s8
 47jlicZZv/9aJu+bxOc6BiscT1t0J3oZT7vHiaO7lViKMxINtZiLihMBUFGz4QMDAAA=
X-CMS-MailID: 20200404181530epcas5p1626022d953c9c694e69052fb429c0d91
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200327171423epcas5p485d227f19e45999ad9b42b21d2864e4a
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171423epcas5p485d227f19e45999ad9b42b21d2864e4a@epcas5p4.samsung.com>
 <20200327170638.17670-6-alim.akhtar@samsung.com>
 <ac67cfc3736cf50c716b823a59af878d59b7198f.camel@gmail.com>
 <000801d60516$823fd890$86bf89b0$@samsung.com>
 <838a17416b4ed59903ae153e09842ac62584616f.camel@gmail.com>
 <002e01d605df$af658440$0e308cc0$@samsung.com>
 <1182150aff8140a82af17979a09c81676c719e2f.camel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_111536_867108_9FBB02C3 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multipart message in MIME format.

------=_NextPart_000_0001_01D60ADB.1FA12B60
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Pawel,

> -----Original Message-----
> From: Pawe=C5=82=20Chmiel=20<pawel.mikolaj.chmiel=40gmail.com>=0D=0A>=20S=
ent:=2003=20April=202020=2022:22=0D=0A>=20To:=20Alim=20Akhtar=20<alim.akhta=
r=40samsung.com>;=20robh+dt=40kernel.org;=0D=0A>=20devicetree=40vger.kernel=
.org;=20linux-scsi=40vger.kernel.org=0D=0A>=20Cc:=20krzk=40kernel.org;=20av=
ri.altman=40wdc.com;=20martin.petersen=40oracle.com;=0D=0A>=20kwmad.kim=40s=
amsung.com;=20stanley.chu=40mediatek.com;=0D=0A>=20cang=40codeaurora.org;=
=20linux-samsung-soc=40vger.kernel.org;=20linux-arm-=0D=0A>=20kernel=40list=
s.infradead.org;=20linux-kernel=40vger.kernel.org=0D=0A>=20Subject:=20Re:=
=20=5BPATCH=20v4=205/5=5D=20arm64:=20dts:=20Add=20node=20for=20ufs=20exynos=
7=0D=0A>=20=0D=0A>=20Hi=20Alim=0D=0A>=20=0D=0A>=20Looking=20at=20vendor=20s=
ources,=20my=20device=20is=20using=20the=20same=20gpios=20for=0D=0A>=20urfs=
_rst_n=20and=20ufs_refclk_out=20like=20Espresso=20(with=20one=20difference=
=20-=0D=0A>=20ufs_rst_n=20shouldn't=20be=20pulled=20up).=0D=0A>=20=0D=0A>=
=20About=20regulators=20(it=20would=20be=20easier=20if=20dts=20would=20have=
=20all=20regulators).=0D=0A>=20It's=20also=20using=20s2mps15=20as=20Espress=
o,=20but=20it=20vendor=20dts=20had=20only=208=20(of=0D=0A>=2010=20possible=
=20bucks,=20one=20missing=20was=20for=20UFS)=20and=2014=20ldos=20(of=2027=
=0D=0A>=20possible),=20where=20almost=20all=20rails=20are=20connected=20to=
=20something.=0D=0A>=20=0D=0A>=20I'm=20wondering=20how=20it's=20working=20o=
n=20Espresso,=20because=20when=20adding=20correct=0D=0A>=20regulators=20for=
=20ufs=20(vccq=20=3D=20buck10=20from=20s2mps15,=20always=20enabled=20for=0D=
=0A>=20testing=20plus=20vccq2=20and=20vccq=20=3D=20two=20regulators=20enabl=
ed=20by=20one=20gpio,=0D=0A>=20enabled=20at=20boot=20by=20firmware),=20ufs=
=20wasn't=20still=20working=20because=20it=20was=0D=0A>=20then=20failing=20=
at=20defer=20probe=20(s2mps15=20was=20probed=20after=20ufs)=0D=0A>=20=0D=0A=
>=20=5B=20=20=20=200.962482=5D=20exynos-ufshc=2015570000.ufs:=20ufshcd_get_=
vreg:=20vccq=20get=0D=0A>=20failed,=20err=3D-517=0D=0A>=0D=0AAs=20I=20said,=
=20this=20is=20very=20specific=20to=20the=20board,=20on=20Espresso=20we=20h=
ave=20LDO12=20connected=20to=20UFS_RESETn.=0D=0AEither=20make=20all=20of=20=
them=20as=20always-on,=20or=20just=20disabled=20s2mps15=20=0D=0A(default=20=
voltage=20supply=20should=20be=20ok,=20unless=20bootloader=20on=20your=20bo=
ard=20does=20have=20messed=20too=20much=20with=20PMIC)=0D=0A=20=0D=0A>=20Af=
ter=20that=20boot=20would=20just=20stop/hang.=0D=0A>=20=0D=0A>=20After=20ma=
king=20a=20=22dirty=20fix=22=20by=20making=20s2mps15=20regulator=20driver=
=20use=0D=0A>=20subsys_initcall=20(like=20in=20vendor=20sources)=20and=20uf=
s=20late_initcall=20(to=20give=0D=0A>=20it=20more=20time=20to=20setup=20and=
=20get=20it=20working=20and=20solve=20it=20later),=0D=0A>=20i=20had=20to=20=
mark=20following=20clocks=20as=20CLK_IGNORE_UNUSED=20to=20be=20able=20to=20=
bring=0D=0A>=20link=20up=20(it=20replicates=20setting=20done=20by=20vendor=
=20kernel,=20which=20enables=0D=0A>=20them=20on=20boot):=0D=0A>=20-=20=22ph=
yclk_ufs20_rx1_symbol_user=22=0D=0A>=20-=20=22phyclk_ufs20_rx0_symbol_user=
=22=0D=0A>=20-=20=22phyclk_ufs20_tx0_symbol_user=22=0D=0A>=20=0D=0AComing=
=20to=20these=20clocks,=20all=20these=20are=20supplied=20by=20default,=20my=
=20best=20guess=20is=20since=20you=20are=20using=20an=20actual=20product=20=
(S6=20edge),=20they=20might=20have=20optimized=20for=20power=20saving=20=0D=
=0AAnd=20most=20likely=20all=20clock=20might=20be=20=20gated=20initially.=
=20In=20my=20case=20all=20are=20set=20to=20default.=0D=0AI=20have=20attache=
d=20a=20small=20change=20in=20the=20exynos7=20dts=20and=20phy=20driver=20cl=
ock=20handling,=20please=20try=20this=20attached=20patch=20and=20let=20me=
=20know=20if=20this=20helps=20in=20removing=20some=20of=20your=20hacks.=0D=
=0AIn=20the=20later=20SoCs=20these=20clocks=20are=20not=20in=20this=20form,=
=20so=20I=20didn't=20included=20in=20my=20current=20patch=20set,=20If=20thi=
s=20works=20for=20your,=20will=20add=20as=20an=20optional=20for=20exynos7/7=
420.=0D=0AI=20also=20assume=20you=20are=20using=20clk-exynos7.c=20and=20my=
=20posted=20ufs=20driver.=0D=0A=0D=0A>=20Now=20it's=20able=20to=20bring=20b=
oth=20device=20and=20link,=20but=20it=20fails=20at=0D=0A>=20ufshcd_uic_chan=
ge_pwr_mode.=0D=0A>=20=0D=0ACan=20you=20please=20use=20the=20exact=20ufs=20=
and=20ufs-phy=20device=20node=20as=20in=20my=20patch?=0D=0A=0D=0A>=20=5B=20=
=20=20=201.411547=5D=20exynos-ufshc=2015570000.ufs:=20ufshcd_init_clocks:=
=20clk:=0D=0A>=20core_clk,=20rate:=20100000000=0D=0A>=20=5B=20=20=20=201.41=
9698=5D=20exynos-ufshc=2015570000.ufs:=20ufshcd_init_clocks:=20clk:=0D=0A>=
=20sclk_unipro_main,=20rate:=20167000000=0D=0A>=20=5B=20=20=20=201.428550=
=5D=20exynos-ufshc=2015570000.ufs:=20__ufshcd_setup_clocks:=20clk:=0D=0A>=
=20core_clk=20enabled=0D=0A>=20=5B=20=20=20=201.436200=5D=20exynos-ufshc=20=
15570000.ufs:=20__ufshcd_setup_clocks:=20clk:=0D=0A>=20sclk_unipro_main=20e=
nabled=0D=0A>=20=5B=20=20=20=201.445704=5D=20scsi=20host0:=20ufshcd=0D=0A>=
=20=5B=20=20=20=201.465684=5D=20exynos-ufshc=2015570000.ufs:=20ufshcd_print=
_pwr_info:=5BRX,=0D=0A>=20TX=5D:=20gear=3D=5B1,=201=5D,=20lane=5B1,=201=5D,=
=20pwr=5BSLOWAUTO_MODE,=20SLOWAUTO_MODE=5D,=20rate=0D=0A>=20=3D=0D=0A>=200=
=0D=0A>=20=5B=20=20=20=202.023699=5D=20exynos-ufshc=2015570000.ufs:=20dme-s=
et:=20attr-id=200xd041=20val=0D=0A>=200x1fff=20error=20code=201=0D=0A>=20=
=5B=20=20=20=202.023846=5D=20exynos-ufshc=2015570000.ufs:=20dme-set:=20attr=
-id=200xd041=20val=0D=0A>=200x1fff=20failed=200=20retries=0D=0A>=20=5B=20=
=20=20=202.024025=5D=20exynos-ufshc=2015570000.ufs:=20dme-set:=20attr-id=20=
0xd042=20val=0D=0A>=200xffff=20error=20code=201=0D=0A>=20=5B=20=20=20=202.0=
25457=5D=20exynos-ufshc=2015570000.ufs:=20dme-set:=20attr-id=200xd042=20val=
=0D=0A>=200xffff=20failed=200=20retries=0D=0A>=20=5B=20=20=20=202.033777=5D=
=20exynos-ufshc=2015570000.ufs:=20dme-set:=20attr-id=200xd043=20val=0D=0A>=
=200x7fff=20error=20code=201=0D=0A>=20=5B=20=20=20=202.041607=5D=20exynos-u=
fshc=2015570000.ufs:=20dme-set:=20attr-id=200xd043=20val=0D=0A>=200x7fff=20=
failed=200=20retries=0D=0A>=20=5B=20=20=20=202.067809=5D=20exynos-ufshc=201=
5570000.ufs:=20pwr=20ctrl=20cmd=200x2=20failed,=20host=0D=0A>=20upmcrs:0x5=
=0D=0A>=20=5B=20=20=20=202.067953=5D=20exynos-ufshc=2015570000.ufs:=20UFS=
=20Host=20state=3D0=0D=0A>=20=5B=20=20=20=202.068056=5D=20exynos-ufshc=2015=
570000.ufs:=20outstanding=20reqs=3D0x0=0D=0A>=20tasks=3D0x0=0D=0A>=20=5B=20=
=20=20=202.068759=5D=20exynos-ufshc=2015570000.ufs:=20saved_err=3D0x0,=0D=
=0A>=20saved_uic_err=3D0x0=0D=0A>=20=5B=20=20=20=202.075368=5D=20exynos-ufs=
hc=2015570000.ufs:=20Device=20power=20mode=3D1,=20UIC=20link=0D=0A>=20state=
=3D1=0D=0A>=20=5B=20=20=20=202.082392=5D=20exynos-ufshc=2015570000.ufs:=20P=
M=20in=20progress=3D0,=20sys.=0D=0A>=20suspended=3D0=0D=0A>=20=5B=20=20=20=
=202.089158=5D=20exynos-ufshc=2015570000.ufs:=20Auto=20BKOPS=3D0,=20Host=20=
self-=0D=0A>=20block=3D0=0D=0A>=20=5B=20=20=20=202.095667=5D=20exynos-ufshc=
=2015570000.ufs:=20Clk=20gate=3D1=0D=0A>=20=5B=20=20=20=202.100354=5D=20exy=
nos-ufshc=2015570000.ufs:=20error=20handling=20flags=3D0x0,=0D=0A>=20req.=
=20abort=20count=3D0=0D=0A>=20=5B=20=20=20=202.107987=5D=20exynos-ufshc=201=
5570000.ufs:=20Host=20capabilities=3D0x383ff0f,=0D=0A>=20caps=3D0x0=0D=0A>=
=20=5B=20=20=20=202.115018=5D=20exynos-ufshc=2015570000.ufs:=20quirks=3D0x7=
80,=20dev.=0D=0A>=20quirks=3D0xc4=0D=0A>=20=5B=20=20=20=202.121443=5D=20exy=
nos-ufshc=2015570000.ufs:=20ufshcd_print_pwr_info:=5BRX,=0D=0A>=20TX=5D:=20=
gear=3D=5B1,=201=5D,=20lane=5B1,=201=5D,=20pwr=5BSLOWAUTO_MODE,=20SLOWAUTO_=
MODE=5D,=20rate=0D=0A>=20=3D=0D=0A>=200=0D=0A>=20=5B=20=20=20=202.133960=5D=
=20host_regs:=2000000000:=200383ff0f=2000000000=2000000200=2000000000=0D=0A=
>=20=5B=20=20=20=202.140268=5D=20host_regs:=2000000010:=2000000101=2000007f=
ce=2000000000=2000000000=0D=0A>=20=5B=20=20=20=202.146604=5D=20host_regs:=
=2000000020:=2000000000=2000030a75=2000000000=2000000000=0D=0A>=20=5B=20=20=
=20=202.152940=5D=20host_regs:=2000000030:=200000050f=2000000000=2080000010=
=2000000000=0D=0A>=20=5B=20=20=20=202.159271=5D=20host_regs:=2000000040:=20=
00000000=2000000000=2000000000=2000000000=0D=0A>=20=5B=20=20=20=202.165609=
=5D=20host_regs:=2000000050:=20f9587000=2000000000=2000000000=2000000000=0D=
=0A>=20=5B=20=20=20=202.171944=5D=20host_regs:=2000000060:=2000000001=20000=
00000=2000000000=2000000000=0D=0A>=20=5B=20=20=20=202.178278=5D=20host_regs=
:=2000000070:=20f958a000=2000000000=2000000000=2000000000=0D=0A>=20=5B=20=
=20=20=202.184609=5D=20host_regs:=2000000080:=2000000001=2000000000=2000000=
000=2000000000=0D=0A>=20=5B=20=20=20=202.190945=5D=20host_regs:=2000000090:=
=2000000002=2015710000=2000000000=2000000000=0D=0A>=20=5B=20=20=20=202.1972=
82=5D=20exynos-ufshc=2015570000.ufs:=20hba->ufs_version=20=3D=200x200,=0D=
=0A>=20hba->capabilities=20=3D=200x383ff0f=0D=0A>=20=5B=20=20=20=202.205869=
=5D=20exynos-ufshc=2015570000.ufs:=20hba->outstanding_reqs=20=3D=200x0,=0D=
=0A>=20hba->outstanding_tasks=20=3D=200x0=0D=0A>=20=5B=20=20=20=202.214636=
=5D=20exynos-ufshc=2015570000.ufs:=20last_hibern8_exit_tstamp=20at=200=0D=
=0A>=20us,=20hibern8_exit_cnt=20=3D=200=0D=0A>=20=5B=20=20=20=202.223141=5D=
=20exynos-ufshc=2015570000.ufs:=20No=20record=20of=20pa_err=0D=0A>=20=5B=20=
=20=20=202.228606=5D=20exynos-ufshc=2015570000.ufs:=20No=20record=20of=20dl=
_err=0D=0A>=20=5B=20=20=20=202.234071=5D=20exynos-ufshc=2015570000.ufs:=20N=
o=20record=20of=20nl_err=0D=0A>=20=5B=20=20=20=202.239540=5D=20exynos-ufshc=
=2015570000.ufs:=20No=20record=20of=20tl_err=0D=0A>=20=5B=20=20=20=202.2450=
07=5D=20exynos-ufshc=2015570000.ufs:=20No=20record=20of=20dme_err=0D=0A>=20=
=5B=20=20=20=202.250558=5D=20exynos-ufshc=2015570000.ufs:=20No=20record=20o=
f=20auto_hibern8_err=0D=0A>=20=5B=20=20=20=202.256895=5D=20exynos-ufshc=201=
5570000.ufs:=20No=20record=20of=20fatal_err=0D=0A>=20=5B=20=20=20=202.26262=
4=5D=20exynos-ufshc=2015570000.ufs:=20No=20record=20of=0D=0A>=20link_startu=
p_fail=0D=0A>=20=5B=20=20=20=202.269044=5D=20exynos-ufshc=2015570000.ufs:=
=20No=20record=20of=20resume_fail=0D=0A>=20=5B=20=20=20=202.274942=5D=20exy=
nos-ufshc=2015570000.ufs:=20No=20record=20of=20suspend_fail=0D=0A>=20=5B=20=
=20=20=202.280931=5D=20exynos-ufshc=2015570000.ufs:=20No=20record=20of=20de=
v_reset=0D=0A>=20=5B=20=20=20=202.286659=5D=20exynos-ufshc=2015570000.ufs:=
=20No=20record=20of=20host_reset=0D=0A>=20=5B=20=20=20=202.292475=5D=20exyn=
os-ufshc=2015570000.ufs:=20No=20record=20of=20task_abort=0D=0A>=20=5B=20=20=
=20=202.298290=5D=20exynos-ufshc=2015570000.ufs:=20ufshcd_change_power_mode=
:=0D=0A>=20power=20mode=20change=20failed=205=0D=0A>=20=5B=20=20=20=202.306=
619=5D=20exynos-ufshc=2015570000.ufs:=20ufshcd_probe_hba:=20Failed=0D=0A>=
=20setting=20power=20mode,=20err=20=3D=205=0D=0A>=20=5B=20=20=20=202.315144=
=5D=20exynos-ufshc=2015570000.ufs:=20__ufshcd_setup_clocks:=20clk:=0D=0A>=
=20core_clk=20disabled=0D=0A>=20=0D=0A>=20And=20here=20boot=20would=20just=
=20stop/hang.=0D=0A>=20=0D=0A>=20Thanks=20for=20all=20hints.=0D=0A>=20=0D=
=0A>=20>=0D=0A>=20>=0D=0A>=20>=20>=20>=20>=20Also=20looking=20at=20clk-exyn=
os7=20driver=20seems=20to=20confirm=20this.=0D=0A>=20>=20>=20>=20>=0D=0A>=
=20>=20>=20>=20>=20>=20+=09=09=7D;=0D=0A>=20>=20>=20>=20>=20>=20+=0D=0A>=20=
>=20>=20>=20>=20>=20=20=09=09usbdrd_phy:=20phy=4015500000=20=7B=0D=0A>=20>=
=20>=20>=20>=20>=20=20=09=09=09compatible=20=3D=20=22samsung,exynos7-usbdrd=
-phy=22;=0D=0A>=20>=20>=20>=20>=20>=20=20=09=09=09reg=20=3D=20<0x15500000=
=200x100>;=0D=0A>=20>=0D=0A>=20>=0D=0A=0D=0A=0D=0A
------=_NextPart_000_0001_01D60ADB.1FA12B60
Content-Type: application/octet-stream; name="ufs_phy_clk.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="ufs_phy_clk.patch"

ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2V4eW5vczcuZHRzaSBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2V4eW5vczcuZHRzaQppbmRleCBhOTUzMWM0YmYyMmYu
LjlhNGRkOWFlNWNkZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZXh5
bm9zNy5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2V4eW5vczcuZHRzaQpA
QCAtNjY1LDkgKzY2NSwxNCBAQAogCQkJcmVnLW5hbWVzID0gInBoeS1wbWEiOwogCQkJc2Ftc3Vu
ZyxwbXUtc3lzY29uID0gPCZwbXVfc3lzdGVtX2NvbnRyb2xsZXI+OwogCQkJI3BoeS1jZWxscyA9
IDwwPjsKLQkJCWNsb2NrcyA9IDwmY2xvY2tfZnN5czEgTU9VVF9GU1lTMV9QSFlDTEtfU0VMMT4s
Ci0JCQkJPCZjbG9ja190b3AxIENMS19TQ0xLX1BIWV9GU1lTMV8yNk0+OwotCQkJY2xvY2stbmFt
ZXMgPSAicmVmX2Nsa19wYXJlbnQiLCAicmVmX2NsayI7CisJCQljbG9ja3MgPSA8JmNsb2NrX3Rv
cDEgRE9VVF9TQ0xLX1BIWV9GU1lTMV8yNk0+LAorCQkJCSA8JmNsb2NrX2ZzeXMxIFNDTEtfQ09N
Qk9fUEhZX0VNQkVEREVEXzI2TT4sCisJCQkJIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JY
MV9TWU1CT0xfVVNFUj4sCisJCQkJIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JYMF9TWU1C
T0xfVVNFUj4sCisJCQkJIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1RYMF9TWU1CT0xfVVNF
Uj47CisJCQljbG9jay1uYW1lcyA9ICJyZWZfY2xrX3BhcmVudCIsICJyZWZfY2xrIiwKKwkJCQkJ
InJ4MV9zeW1ib2xfY2xrIiwgInJ4MF9zeW1ib2xfY2xrIiwKKwkJCQkJInR4MF9zeW1ib2xfY2xr
IjsKIAkJfTsKIAogCQl1c2JkcmRfcGh5OiBwaHlAMTU1MDAwMDAgewpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcv
cGh5LXNhbXN1bmctdWZzLmMKaW5kZXggNTcyZTQwZTcyNzc2Li4yZDVkY2Q2NzA5MjcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LXNhbXN1bmctdWZzLmMKKysrIGIvZHJpdmVy
cy9waHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuYwpAQCAtMTM2LDkgKzEzNiw2MyBAQCBpbnQg
c2Ftc3VuZ191ZnNfcGh5X2NhbGlicmF0ZShzdHJ1Y3QgcGh5ICpwaHkpCiAJcmV0dXJuIGVycjsK
IH0KIAorc3RhdGljIGludCBzYW1zdW5nX3Vmc19waHlfc3ltYm9sX2Nsa19pbml0KHN0cnVjdCBz
YW1zdW5nX3Vmc19waHkgKnBoeSkKK3sKKwlzdHJ1Y3QgY2xrICpjbGs7CisJaW50IHJldCA9IDA7
CisKKwljbGsgPSBkZXZtX2Nsa19nZXQocGh5LT5kZXYsICJ0eDBfc3ltYm9sX2NsayIpOworCWlm
IChJU19FUlIoY2xrKSkgeworCQlkZXZfZXJyKHBoeS0+ZGV2LCAiZmFpbGVkIHRvIGdldCB0eDBf
c3ltYm9sX2NsayBjbG9ja1xuIik7CisJCWdvdG8gb3V0OworCX0gZWxzZSB7CisJCXBoeS0+dHgw
X3N5bWJvbF9jbGsgPSBjbGs7CisJfQorCisJY2xrID0gZGV2bV9jbGtfZ2V0KHBoeS0+ZGV2LCAi
cngwX3N5bWJvbF9jbGsiKTsKKwlpZiAoSVNfRVJSKGNsaykpIHsKKwkJZGV2X2VycihwaHktPmRl
diwgImZhaWxlZCB0byBnZXQgcngwX3N5bWJvbF9jbGsgY2xvY2tcbiIpOworCQlnb3RvIG91dDsK
Kwl9IGVsc2UgeworCQlwaHktPnJ4MF9zeW1ib2xfY2xrID0gY2xrOworCX0KKworCWNsayA9IGRl
dm1fY2xrX2dldChwaHktPmRldiwgInJ4MV9zeW1ib2xfY2xrIik7CisJaWYgKElTX0VSUihjbGsp
KSB7CisJCWRldl9lcnIocGh5LT5kZXYsICJmYWlsZWQgdG8gZ2V0IHJ4MV9zeW1ib2xfY2xrIGNs
b2NrXG4iKTsKKwkJZ290byBvdXQ7CisJfSBlbHNlIHsKKwkJcGh5LT5yeDFfc3ltYm9sX2NsayA9
IGNsazsKKwl9CisKKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGh5LT50eDBfc3ltYm9sX2Ns
ayk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKHBoeS0+ZGV2LCAiJXM6IHR4MF9zeW1ib2xfY2xr
IGVuYWJsZSBmYWlsZWQgJWRcbiIsCisJCQkJX19mdW5jX18sIHJldCk7CisJCWdvdG8gb3V0Owor
CX0KKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocGh5LT5yeDBfc3ltYm9sX2Nsayk7CisJaWYg
KHJldCkgeworCQlkZXZfZXJyKHBoeS0+ZGV2LCAiJXM6IHJ4MF9zeW1ib2xfY2xrIGVuYWJsZSBm
YWlsZWQgJWRcbiIsCisJCQkJX19mdW5jX18sIHJldCk7CisJCWdvdG8gb3V0OworCX0KKwlyZXQg
PSBjbGtfcHJlcGFyZV9lbmFibGUocGh5LT5yeDFfc3ltYm9sX2Nsayk7CisJaWYgKHJldCkgewor
CQlkZXZfZXJyKHBoeS0+ZGV2LCAiJXM6IHJ4MV9zeW1ib2xfY2xrIGVuYWJsZSBmYWlsZWQgJWRc
biIsCisJCQkJX19mdW5jX18sIHJldCk7CisJCWdvdG8gb3V0OworCX0KK291dDoKKwlyZXR1cm4g
cmV0OworfQorCiBzdGF0aWMgaW50IHNhbXN1bmdfdWZzX3BoeV9jbGtzX2luaXQoc3RydWN0IHNh
bXN1bmdfdWZzX3BoeSAqcGh5KQogewogCXN0cnVjdCBjbGsgKmNoaWxkLCAqcGFyZW50OworCXUz
MiBwaHlfY2xrX3JhdGUsIHBoeV9wYXJlbnRfcmF0ZTsKKwlpbnQgcmV0OworCiAKIAljaGlsZCA9
IGRldm1fY2xrX2dldChwaHktPmRldiwgInJlZl9jbGsiKTsKIAlpZiAoSVNfRVJSKGNoaWxkKSkK
QEAgLTE0NiwxOCArMjAwLDMyIEBAIHN0YXRpYyBpbnQgc2Ftc3VuZ191ZnNfcGh5X2Nsa3NfaW5p
dChzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5ICpwaHkpCiAJZWxzZQogCQlwaHktPnJlZl9jbGsgPSBj
aGlsZDsKIAorCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwaHktPnJlZl9jbGspOworCWlmIChy
ZXQpIHsKKwkJZGV2X2VycihwaHktPmRldiwgIiVzOiByZWZfY2xrIGVuYWJsZSBmYWlsZWQgJWRc
biIsCisJCQkJX19mdW5jX18sIHJldCk7CisJCXJldHVybiByZXQ7CisJfQorCisJcGh5X2Nsa19y
YXRlID0gY2xrX2dldF9yYXRlKGNoaWxkKTsKKwlkZXZfaW5mbyhwaHktPmRldiwgIk1QSFkgcmVm
X2Nsa19yYXRlID0gJWRcbiIsIHBoeV9jbGtfcmF0ZSk7CisKIAlwYXJlbnQgPSBkZXZtX2Nsa19n
ZXQocGh5LT5kZXYsICJyZWZfY2xrX3BhcmVudCIpOwogCWlmIChJU19FUlIocGFyZW50KSkKIAkJ
ZGV2X2VycihwaHktPmRldiwgImZhaWxlZCB0byBnZXQgcmVmX2Nsa19wYXJlbnQgY2xvY2tcbiIp
OwogCWVsc2UKIAkJcGh5LT5yZWZfY2xrX3BhcmVudCA9IHBhcmVudDsKIAorCXBoeV9wYXJlbnRf
cmF0ZSA9IGNsa19nZXRfcmF0ZShwYXJlbnQpOworCWRldl9pbmZvKHBoeS0+ZGV2LCAiTVBIWSBy
ZWZfcGFyZW50X2Nsa19yYXRlID0gJWRcbiIsIHBoeV9wYXJlbnRfcmF0ZSk7CisKIAlyZXR1cm4g
Y2xrX3NldF9wYXJlbnQoY2hpbGQsIHBhcmVudCk7CiB9CiAKIHN0YXRpYyBpbnQgc2Ftc3VuZ191
ZnNfcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQogewogCXN0cnVjdCBzYW1zdW5nX3Vmc19waHkg
Kl9waHkgPSBnZXRfc2Ftc3VuZ191ZnNfcGh5KHBoeSk7CisJaW50IHJldDsKIAogCV9waHktPmxh
bmVfY250ID0gcGh5LT5hdHRycy5idXNfd2lkdGg7CiAJX3BoeS0+dWZzX3BoeV9zdGF0ZSA9IENG
R19QUkVfSU5JVDsKQEAgLTE2Nyw3ICsyMzUsMTMgQEAgc3RhdGljIGludCBzYW1zdW5nX3Vmc19w
aHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCiAJX3BoeS0+aXNfcHJlX3BtYyA9IGZhbHNlOwogCV9w
aHktPmlzX3Bvc3RfcG1jID0gZmFsc2U7CiAKLQlzYW1zdW5nX3Vmc19waHlfY2xrc19pbml0KF9w
aHkpOworCXJldCA9IHNhbXN1bmdfdWZzX3BoeV9zeW1ib2xfY2xrX2luaXQoX3BoeSk7CisJaWYg
KHJldCkKKwkJZGV2X2VycihfcGh5LT5kZXYsICJmYWlsZWQgdG8gc2V0IHVmcyBwaHkgc3ltYm9s
IGNsb2Nrc1xuIik7CisKKwlyZXQgPSBzYW1zdW5nX3Vmc19waHlfY2xrc19pbml0KF9waHkpOwor
CWlmICghcmV0KQorCQlkZXZfZXJyKF9waHktPmRldiwgImZhaWxlZCB0byBzZXQgdWZzIHBoeSAg
Y2xvY2tzXG4iKTsKIAogCXNhbXN1bmdfdWZzX3BoeV9jYWxpYnJhdGUocGh5KTsKIApAQCAtMTc3
LDE0ICsyNTEsNiBAQCBzdGF0aWMgaW50IHNhbXN1bmdfdWZzX3BoeV9pbml0KHN0cnVjdCBwaHkg
KnBoeSkKIHN0YXRpYyBpbnQgc2Ftc3VuZ191ZnNfcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBo
eSkKIHsKIAlzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5ICpfcGh5ID0gZ2V0X3NhbXN1bmdfdWZzX3Bo
eShwaHkpOwotCWludCByZXQ7Ci0KLQlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoX3BoeS0+cmVm
X2Nsayk7Ci0JaWYgKHJldCkgewotCQlkZXZfZXJyKF9waHktPmRldiwgIiVzOiByZWZfY2xrIGVu
YWJsZSBmYWlsZWQgJWRcbiIsCi0JCQkJX19mdW5jX18sIHJldCk7Ci0JCXJldHVybiByZXQ7Ci0J
fQogCiAJc2Ftc3VuZ191ZnNfcGh5X2N0cmxfaXNvbChfcGh5LCBmYWxzZSk7CiAJcmV0dXJuIDA7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1zYW1zdW5nLXVmcy5oIGIvZHJp
dmVycy9waHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuaAppbmRleCA5NzFkNjdhZTdmODAuLjI3
ZGMxYjU3MzQ2OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11
ZnMuaAorKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1zYW1zdW5nLXVmcy5oCkBAIC0xMTAs
NiArMTEwLDkgQEAgc3RydWN0IHNhbXN1bmdfdWZzX3BoeSB7CiAJc3RydWN0IHJlZ21hcCAqcmVn
X3BtdTsKIAlzdHJ1Y3QgY2xrICpyZWZfY2xrOwogCXN0cnVjdCBjbGsgKnJlZl9jbGtfcGFyZW50
OworCXN0cnVjdCBjbGsgKnR4MF9zeW1ib2xfY2xrOworCXN0cnVjdCBjbGsgKnJ4MF9zeW1ib2xf
Y2xrOworCXN0cnVjdCBjbGsgKnJ4MV9zeW1ib2xfY2xrOwogCWNvbnN0IHN0cnVjdCBzYW1zdW5n
X3Vmc19waHlfZHJ2ZGF0YSAqZHJ2ZGF0YTsKIAlzdHJ1Y3Qgc2Ftc3VuZ191ZnNfcGh5X2NmZyAq
KmNmZzsKIAljb25zdCBzdHJ1Y3QgcG11X2lzb2wgKmlzb2w7Cg==

------=_NextPart_000_0001_01D60ADB.1FA12B60
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

------=_NextPart_000_0001_01D60ADB.1FA12B60--


