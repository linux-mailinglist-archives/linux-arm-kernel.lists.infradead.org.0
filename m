Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32C11A5D4C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 09:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWOkBZbsO7WS4J2LPjBF8VsgB88wBla80LTtwe02uEE=; b=ESIwbmp5qkaFKp
	hc3j+ve6EvuS9GqTsDEtMqkCc+SwAvmo6n4KeOpcahqlFgHiQGqWbQ1qxoJM4v4gfHyui/0yzf+kc
	HYOcw+Zdr2NAKOXB2JUSp8n/1/ukwROT4n4bjikTaGS5yO4hIrmGYNe1/BuRikzFqhYrsMMTecpQn
	DMG4Xo3bBG/htq5wyi8zKsvFXchVw8CVBkuVObRuPOB3cYFVeb5ByTBNLd4VZ3CfsJv2VzQbT84A8
	52+UgRz7+BVeDrf90+T+lKs8ZJfa+VE4N23k/gA3MHGUTJwK7+VlRPgZm2M5NvdSdzFrzeJRqb82b
	ZvmWpxjM+LEUwAj77slQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNXGB-0003CK-UJ; Sun, 12 Apr 2020 07:42:31 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNXFq-00035n-83
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 07:42:12 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200412074205epoutp0203a370b6f5eb34413b23cec11d9451ad~FAp7hVaN33192031920epoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 07:42:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200412074205epoutp0203a370b6f5eb34413b23cec11d9451ad~FAp7hVaN33192031920epoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586677325;
 bh=PdZr65Wo5TW1cANP8kk5hrsoRREQWBxl8FwYNrvhuxw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M7SBuoUVAC/CowKwz91/zlp4phzOuhZ+YmncO69EfeRenS8qPWySGwea1dWDa6Euz
 L6jIQ0SHmjDuB759Sz8QhR2MXDMffeWzIs9PT2L/+Lq3DKoWGwDw4WX6kDCKLCxbQ9
 QFjkruufauVzbpfnXblLxgNspmS4ZXAbv4N6WLLU=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200412074204epcas5p2290bc7abe666298739815abcaec714f4~FAp6iYfLs1436314363epcas5p2u;
 Sun, 12 Apr 2020 07:42:04 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 8A.91.04736.B46C29E5; Sun, 12 Apr 2020 16:42:04 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200412074203epcas5p4b8a73ef32cf27a3ebd9398caa69149a1~FAp55CYua1693016930epcas5p44;
 Sun, 12 Apr 2020 07:42:03 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200412074203epsmtrp29ed47a338efc3afbe9240a304d6ad3d7~FAp51lIiP0481304813epsmtrp24;
 Sun, 12 Apr 2020 07:42:03 +0000 (GMT)
X-AuditID: b6c32a4b-ae3ff70000001280-a8-5e92c64be02a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 4C.3E.04024.B46C29E5; Sun, 12 Apr 2020 16:42:03 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200412074201epsmtip16e8388ebcd66159ae232129f76e1acca~FAp35DDDA0326303263epsmtip1L;
 Sun, 12 Apr 2020 07:42:01 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v5 1/5] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Sun, 12 Apr 2020 13:01:55 +0530
Message-Id: <20200412073159.37747-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200412073159.37747-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHKsWRmVeSWpSXmKPExsWy7bCmpq7PsUlxBtNdLR7M28Zm8fLnVTaL
 T+uXsVrMP3KO1eL8+Q3sFje3HGWx2PT4GqvF5V1z2CxmnN/HZNF9fQebxfLj/5gs/u/ZwW6x
 dOtNRgdej8t9vUwem1Z1snlsXlLv0XJyP4vHx6e3WDz6tqxi9Pi8Sc6j/UA3UwBHFJdNSmpO
 Zllqkb5dAlfGoe66gg2iFbev9LA2MG4T6GLk5JAQMJG4/PgIaxcjF4eQwG5GiTtHnzBDOJ+A
 nNvbGCGcb4wS+45/ZoVp6Z10CaplL6PE/Bt7oFpamCQ+fZ3NBlLFJqAtcXf6FiYQW0TAW+L9
 gfNgHcwC85gkFj3qAUsIAyXuTZvNCGKzCKhKrNjWA2RzcPAK2Eg8uxQCsU1eYvWGA8wgNqeA
 rcSCO11grbwCghInZz5hAbGZgWqat85mhqjvZ5e48JUTwnaROHz7GSOELSzx6vgWdghbSuLz
 u71sIKskBLIlenYZQ4RrJJbOO8YCYdtLHLgyhwWkhFlAU2L9Ln2ITXwSvb+fMEF08kp0tAlB
 VKtKNL+7CtUpLTGxuxsaVB4Sd1buZ4KEzgRGiT3zNzJOYJSfheSBWUgemIWwbQEj8ypGydSC
 4tz01GLTAuO81HK94sTc4tK8dL3k/NxNjOBUpeW9g3HTOZ9DjAIcjEo8vAeuTYwTYk0sK67M
 PcQowcGsJML7pBwoxJuSWFmVWpQfX1Sak1p8iFGag0VJnHcS69UYIYH0xJLU7NTUgtQimCwT
 B6dUAyPfSqOvL103f7H/HZlS8KWxIDK49pTylmqtq0ad/xb5KL7gE/Jd3/wpJOpXuFz6PnOj
 bSHH+5OUGH24xAqfKKV1RrOFstpLHii+oyRkdPLmq+8/W2vL7PrD7HNfK/BKb7oTYflB/Gm8
 89NINnuVhReYpsh75d3w6dZcxVHH8bRIVD/E5vkKJZbijERDLeai4kQAlbKYX1EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsWy7bCSnK73sUlxBism8ls8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujEPddQUbRCtuX+lhbWDcJtDFyMkhIWAi0TvpEmsXIxeHkMBuRomnu7+zQCSk
 Ja5vnMAOYQtLrPz3nB2iqIlJ4ureeWwgCTYBbYm707cwgdgiAv4Sf74fAytiFljFJNHZe5YR
 JCEs4C1xb9psMJtFQFVixbYeIJuDg1fARuLZpRCIBfISqzccYAaxOQVsJRbc6QKbKQRU8nfH
 cbBWXgFBiZMzn7CAtDILqEusnycEEmYGam3eOpt5AqPgLCRVsxCqZiGpWsDIvIpRMrWgODc9
 t9iwwDAvtVyvODG3uDQvXS85P3cTIziytDR3MF5eEn+IUYCDUYmH98C1iXFCrIllxZW5hxgl
 OJiVRHiflAOFeFMSK6tSi/Lji0pzUosPMUpzsCiJ8z7NOxYpJJCeWJKanZpakFoEk2Xi4JRq
 YFzx0jNK4KhaW3GlxqX0IiarP5WsGo/tD61ad+MjP9sNrSN+Gl1TNn/eX1K15lKrXYTPIuM+
 4yl34yoyBOx7xeZ90YvmFNTdt/xJNcvLGR/z2rpWbw/49TeqbXOTzZ+YTUfuZq++FrYowlc6
 Vt1VTm21m4bPPZHEH7vOH3n3fJm6ROzVFi+vlUosxRmJhlrMRcWJADDWXraoAgAA
X-CMS-MailID: 20200412074203epcas5p4b8a73ef32cf27a3ebd9398caa69149a1
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200412074203epcas5p4b8a73ef32cf27a3ebd9398caa69149a1
References: <20200412073159.37747-1-alim.akhtar@samsung.com>
 <CGME20200412074203epcas5p4b8a73ef32cf27a3ebd9398caa69149a1@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_004210_643915_243046B3 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBkb2N1bWVudHMgU2Ftc3VuZyBVRlMgUEhZIGRldmljZSB0cmVlIGJpbmRpbmdz
CgpTaWduZWQtb2ZmLWJ5OiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJAc2Ftc3VuZy5jb20+ClRl
c3RlZC1ieTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwuY29tPgot
LS0KIC4uLi9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwgICAgICAgICB8IDc0ICsr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspCiBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1z
dW5nLHVmcy1waHkueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uMzUyZDVkZGEzMjBkCi0tLSAvZGV2L251bGwKKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVmcy1waHkueWFtbApA
QCAtMCwwICsxLDc0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkg
T1IgQlNELTItQ2xhdXNlCislWUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvc2NoZW1hcy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IFNhbXN1bmcgU29D
IHNlcmllcyBVRlMgUEhZIERldmljZSBUcmVlIEJpbmRpbmdzCisKK21haW50YWluZXJzOgorICAt
IEFsaW0gQWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KKworcHJvcGVydGllczoKKyAg
IiNwaHktY2VsbHMiOgorICAgIGNvbnN0OiAwCisKKyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgor
ICAgICAgLSBzYW1zdW5nLGV4eW5vczctdWZzLXBoeQorCisgIHJlZzoKKyAgICBtYXhJdGVtczog
MQorICAgIGRlc2NyaXB0aW9uOiBQSFkgYmFzZSByZWdpc3RlciBhZGRyZXNzCisKKyAgcmVnLW5h
bWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogcGh5LXBtYQorCisgIGNsb2NrczoKKyAg
ICBpdGVtczoKKyAgICAgIC0gZGVzY3JpcHRpb246IFBMTCByZWZlcmVuY2UgY2xvY2sKKyAgICAg
IC0gZGVzY3JpcHRpb246IHN5bWJvbCBjbG9jayBmb3IgaW5wdXQgc3ltYm9sICggcngwLWNoMCBz
eW1ib2wgY2xvY2spCisgICAgICAtIGRlc2NyaXB0aW9uOiBzeW1ib2wgY2xvY2sgZm9yIGlucHV0
IHN5bWJvbCAoIHJ4MS1jaDEgc3ltYm9sIGNsb2NrKQorICAgICAgLSBkZXNjcmlwdGlvbjogc3lt
Ym9sIGNsb2NrIGZvciBvdXRwdXQgc3ltYm9sICggdHgwIHN5bWJvbCBjbG9jaykKKworICBjbG9j
ay1uYW1lczoKKyAgICBpdGVtczoKKyAgICAgIC0gY29uc3Q6IHJlZl9jbGsKKyAgICAgIC0gY29u
c3Q6IHJ4MV9zeW1ib2xfY2xrCisgICAgICAtIGNvbnN0OiByeDBfc3ltYm9sX2NsaworICAgICAg
LSBjb25zdDogdHgwX3N5bWJvbF9jbGsKKworICBzYW1zdW5nLHBtdS1zeXNjb246CisgICAgJHJl
ZjogJy9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUnCisgICAgZGVzY3Jp
cHRpb246IHBoYW5kbGUgZm9yIFBNVSBzeXN0ZW0gY29udHJvbGxlciBpbnRlcmZhY2UsIHVzZWQg
dG8KKyAgICAgICAgICAgICAgICAgY29udHJvbCBwbXUgcmVnaXN0ZXJzIGJpdHMgZm9yIHVmcyBt
LXBoeQorCityZXF1aXJlZDoKKyAgLSAiI3BoeS1jZWxscyIKKyAgLSBjb21wYXRpYmxlCisgIC0g
cmVnCisgIC0gcmVnLW5hbWVzCisgIC0gY2xvY2tzCisgIC0gY2xvY2stbmFtZXMKKyAgLSBzYW1z
dW5nLHBtdS1zeXNjb24KKworZXhhbXBsZXM6CisgIC0gfAorICAgICNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9jbG9jay9leHlub3M3LWNsay5oPgorCisgICAgdWZzX3BoeTogdWZzLXBoeUAxNTU3MTgw
MCB7CisgICAgICAgIGNvbXBhdGlibGUgPSAic2Ftc3VuZyxleHlub3M3LXVmcy1waHkiOworICAg
ICAgICByZWcgPSA8MHgxNTU3MTgwMCAweDI0MD47CisgICAgICAgIHJlZy1uYW1lcyA9ICJwaHkt
cG1hIjsKKyAgICAgICAgc2Ftc3VuZyxwbXUtc3lzY29uID0gPCZwbXVfc3lzdGVtX2NvbnRyb2xs
ZXI+OworICAgICAgICAjcGh5LWNlbGxzID0gPDA+OworICAgICAgICBjbG9ja3MgPSA8JmNsb2Nr
X2ZzeXMxIFNDTEtfQ09NQk9fUEhZX0VNQkVEREVEXzI2TT4sCisgICAgICAgICAgICAgICAgIDwm
Y2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JYMV9TWU1CT0xfVVNFUj4sCisgICAgICAgICAgICAg
ICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JYMF9TWU1CT0xfVVNFUj4sCisgICAgICAg
ICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1RYMF9TWU1CT0xfVVNFUj47Cisg
ICAgICAgIGNsb2NrLW5hbWVzID0gInJlZl9jbGsiLCAicngxX3N5bWJvbF9jbGsiLAorICAgICAg
ICAgICAgICAgICAgICAgICJyeDBfc3ltYm9sX2NsayIsICJ0eDBfc3ltYm9sX2NsayI7CisKKyAg
ICB9OworLi4uCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
