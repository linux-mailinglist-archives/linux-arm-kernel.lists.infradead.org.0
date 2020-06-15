Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F29431F9CC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKf++UdGEOn5rl1oFZja8qGkvfYfxkTcMH2OMrV4eE4=; b=QZCu41c5rR4yNk
	cfc20YD25mwa/J5sTyQ5oHPpUeSvJRRaMifBzeQK7g/9LOFjnY02694AHfMkxUtLuuW9hhvq7/jcT
	DWPhCpKZ3glrd10X7/RVOJoXgAIF03QASBlk823RrK/vTzuEfIr9MAmbV65NnGj8ONnYqDi5YmNfL
	/MRKV4Cr0uCmtVejWDOian4t9evbbh8ICiTt9Gt9kC/lg8YnzF926fT285bMFXvTmf9nY4AqUb+Df
	RoKEtluv9aAVCBq/QhOne3SDT5kys4migWnVfuvEbT/JIPPOLobMd4P9IXaGcvBYNOeSQQ1mcTbFc
	q5yytUxNt1SFGOy6ZyXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrm6-0007qh-Ly; Mon, 15 Jun 2020 16:15:54 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrly-0007qL-48
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:15:47 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200615161541epoutp02ff7964fb579d665e564682f07a01bd52~Yw8o5sb8r0729707297epoutp02v
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 16:15:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200615161541epoutp02ff7964fb579d665e564682f07a01bd52~Yw8o5sb8r0729707297epoutp02v
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592237741;
 bh=yn3ZGD3Sx3u9Xx0Gs4zDm9kZr9Wmnca8BtW7gNrs0f8=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=IUzfOVGo6yNO6b1tEEYeyqjPNpsYXTtZdOY2FjFOZ1scE5bh3S29H5gNQrEW4RNu2
 apyQ0IfM2BVOvh4ypvUsO8ZMDJLE7U8DXObmAAs0uz9B6wadfFt10VGrA8m4tUrcTq
 ho0m4749DnkcCfXqtmVxO7jClZWSSPK8GLbfNphg=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200615161540epcas5p1f284bbb11bcb5d84ed0d6753d9f957ef~Yw8oM0xY_2011020110epcas5p1f;
 Mon, 15 Jun 2020 16:15:40 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 EE.85.09475.CAE97EE5; Tue, 16 Jun 2020 01:15:40 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200615161539epcas5p26241107c8eaabfae1edafc35256091e0~Yw8nBstNa1810518105epcas5p28;
 Mon, 15 Jun 2020 16:15:39 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200615161539epsmtrp26cfc9488f423cfe861fe655a0ca4588c~Yw8nA3U8o0928009280epsmtrp2R;
 Mon, 15 Jun 2020 16:15:39 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-18-5ee79eacead8
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 F9.B0.08303.BAE97EE5; Tue, 16 Jun 2020 01:15:39 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200615161536epsmtip1dffc161c3bdee0e92186109a3b7e45a6~Yw8kCavY91507915079epsmtip1I;
 Mon, 15 Jun 2020 16:15:36 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
In-Reply-To: <20200614110202.GA9009@kozik-lap>
Subject: RE: [RESEND PATCH v10 10/10] arm64: dts: Add node for ufs exynos7
Date: Mon, 15 Jun 2020 21:45:34 +0530
Message-ID: <000001d64330$35947020$a0bd5060$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQG4t7PjQZEdjsbMgiywO+bF2ZMTLwIE8gPVATQJid0Cb/nUPqjnqNbQ
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPKsWRmVeSWpSXmKPExsWy7bCmpu6aec/jDF590bN4+fMqm8Wn9ctY
 LeYfOcdqceFpD5vF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1Zxehx/MZ2Jo/Pm+Q82g90MwVw
 RnHZpKTmZJalFunbJXBl7N1zg7FgEnvFpcPrmBsYr7N1MXJySAiYSOxYeZ6xi5GLQ0hgN6PE
 poc3GUESQgKfGCW6fjhAJD4zShzdcpcFpuP53XYmiKJdjBLzj5tBFL1hlJi4/irYWDYBXYkd
 i9vAbBEge/ON5ewgRcwCt5gknl/5zAqS4BTQk7gy8QZYkbCAl8TiUxPBVrMIqEp8mHQZrIZX
 wFLi4dPXULagxMmZT8CuYBbQlli28DUzxEUKEj+fLmOFWOYmMf3LPkaIGnGJoz97mEEWSwjc
 4JDonrGNFaLBReLXsQdMELawxKvjW9ghbCmJz+/2Ah3EAWRnS/TsMoYI10gsnXcM6nt7iQNX
 5rCAlDALaEqs36UPsYpPovf3EyaITl6JjjYhiGpVieZ3V6E6pSUmdndDHeAhcaB9H/sERsVZ
 SB6bheSxWUgemIWwbAEjyypGydSC4tz01GLTAuO81HK94sTc4tK8dL3k/NxNjOA0p+W9g/HR
 gw96hxiZOBgPMUpwMCuJ8B6Sfx4nxJuSWFmVWpQfX1Sak1p8iFGag0VJnFfpx5k4IYH0xJLU
 7NTUgtQimCwTB6dUA5PPb4eG5lsJl+WeRRdM594+q2WdqM2bj7aG0hu3Llj7bmFHeovFuQId
 ybu1epe+dYld0JD7fOpfz8rdH5uWZmSWrnlxLJO3zmzZwZbjIa7T+PzXnHu2LPlFp72rdOHK
 B1n7tN9+CD7xJXHKM6a5yoG7hMp6CratvMp/cX7IE5+dzMo/75/Y3f8s3X1xnIy5T5TNoUMX
 vnbfEiqWj4u6xfo+WsrCvfuOK9f2bdo62fEzOO98z+r47F0R+ttv1dTVHGLfu3U33dm+/vCT
 2y/jFO5vkY17PSmEd/nJM6kZ+5LfhxooOH+Lush04883VhHv76d1hY8H3LLe61zw/Ia9sdDX
 v836IVdNfh7fslPqXfgGJZbijERDLeai4kQALx9+vuIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGIsWRmVeSWpSXmKPExsWy7bCSnO7qec/jDBZdlrR4+fMqm8Wn9ctY
 LeYfOcdqceFpD5vF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1Zxehx/MZ2Jo/Pm+Q82g90MwVw
 RnHZpKTmZJalFunbJXBlbFvXxFKwhbXizrNVLA2My1i6GDk5JARMJJ7fbWfqYuTiEBLYwShx
 5m0LI0RCWuL6xgnsELawxMp/z9khil4xSizrbGUDSbAJ6ErsWNwGZosA2ZtvLAcrYhZ4xiSx
 /tx/qI5HjBKXmqazglRxCuhJXJl4A6xDWMBLYvGpiWDrWARUJT5MugxWwytgKfHw6WsoW1Di
 5MwnYLcyC2hLPL35FM5etvA1M8R5ChI/ny5jhbjCTWL6l32MEDXiEkd/9jBPYBSehWTULCSj
 ZiEZNQtJywJGllWMkqkFxbnpucWGBUZ5qeV6xYm5xaV56XrJ+bmbGMFRq6W1g3HPqg96hxiZ
 OBgPMUpwMCuJ8B6Sfx4nxJuSWFmVWpQfX1Sak1p8iFGag0VJnPfrrIVxQgLpiSWp2ampBalF
 MFkmDk6pBqYZyWntagy+f8tqF37x2fzmlJrYzOg9bV83LBMRtKxsW7l5ZkfKuamR/9YpTe7U
 aw2c4JIkxr3iRhxD0adLn01+TOs9lVgVsNmpKOxM1LHF7Hf76779u+c71XW+vNZz6+A3WzXP
 L/x6MO5mX9rXzVo9AimeqlNCRFOSGS75nl5+RuLe9GnWzx5abZP4OH9q6ZKruzTWu5Tfm5BY
 anG2UH7/sYmxp7xSO/lefGfiWzCh86/nwngN2ZLJc3YHiBqbXRLu8Hw3/77Vllm7+QPOb59i
 sVj5anCjsHDkkX1y8w83W7ZGc104wqd8/TbL1lVzVKYfiVcu60r7Z712bq6qep/ZZP5Yw+16
 RzauSzc2OiKhxFKckWioxVxUnAgAVKBKmkkDAAA=
X-CMS-MailID: 20200615161539epcas5p26241107c8eaabfae1edafc35256091e0
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030458epcas5p3f9667bab202d99fb332d5bf5aad63c85
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030458epcas5p3f9667bab202d99fb332d5bf5aad63c85@epcas5p3.samsung.com>
 <20200613024706.27975-11-alim.akhtar@samsung.com>
 <20200614110202.GA9009@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_091546_415037_A3F21841 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kwmad.kim@samsung.com, kishon@ti.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gU2F0LCBKdW4gMTMsIDIwMjAgYXQgMDg6MTc6MDZBTSArMDUzMCwgQWxpbSBBa2h0YXIg
d3JvdGU6Cj4gPiBBZGRpbmcgZHQgbm9kZSBmb2UgVUZTIGFuZCBVRlMtUEhZIGZvciBleHlub3M3
IFNvQy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJAc2Ft
c3VuZy5jb20+Cj4gPiBUZXN0ZWQtYnk6IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2ht
aWVsQGdtYWlsLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3
LWVzcHJlc3NvLmR0cyAgICAgIHwgIDQgKysNCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9leHlu
b3MvZXh5bm9zNy5kdHNpICAgICAgIHwgNDMgKysrKysrKysrKysrKysrKysrLQ0KPiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gDQo+
IFRoaXMgaXMgYWxyZWFkeSBhcHBsaWVkIGFuZCBpbiB0aGUgbGludXgtbmV4dC4gIERvbid0IHJl
c2VuZCBhcHBsaWVkIHBhdGNoZXMuDQo+IA0KU29ycnkgS3J6eXN6dG9mLCBkaWQgbm90IHJlYWxp
emVkIHRoYXQgdGhpcyB3YXMgYWxyZWFkeSBsYW5kZWQgaW4gTGludXgtbmV4dCwgIHlvdXIgcG9p
bnQgdGFrZW4uDQoNCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCg0KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
