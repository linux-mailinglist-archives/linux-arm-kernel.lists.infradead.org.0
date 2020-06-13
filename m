Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C741F80AB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 05:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNJeWwjT5GYlO1gX+fypNBJgi6ThILec8fJV0MH2jsE=; b=HVazHc2JxAa51v
	RZBf6SvpkycE+OtSMy5LAbRnPnEVZagQDS4g9nIIGI0+f2EYlOilWiK2PrSLGrwzF+JrGTsuoWbKL
	nrAkXBGR4OhFDIqJmWSigOzlNtGdWdfsx3benfNAxRe5egB7sLfRRws3x0QSAaz+EuJOtHTjOT5+B
	3p2rp1jelVEDCgEcgywH6IV+sImO2GKMHgS7I0a6vxrUMyHqqQjWHDfPQ2lQ3bnanUWiJ/39a9g4o
	SS/IgV7jhNTZM3vICUr0VPvTXj1h4bLRLm5jM5IrABx/4SHUwPR4GBU8KbrTfuAH5Sw3GX5XRwIVW
	5U5wHqKbnEcAMhl3hJ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjwVZ-0005Ma-AU; Sat, 13 Jun 2020 03:07:01 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwTV-0001QP-Ik
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 03:04:55 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200613030451epoutp0248a52ccef3ec2eaff81bf7f82cf2edf3~X_3kj8wbU2755327553epoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 03:04:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200613030451epoutp0248a52ccef3ec2eaff81bf7f82cf2edf3~X_3kj8wbU2755327553epoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592017491;
 bh=DDMCtAVCNOenQhQBx8fCmPqcdSKUIHqMO34BELtm7U8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CaQiQLvEHvaOkNidr76kFxhDfaDI17dP44enBwmC+ORz7mZxkHoynLLrA3JU6wYc+
 SRtmKHWpT3vn579vL5jhtfk476oHb423xURzHE0abakDROwhDi33vljBIZqXTsxDoz
 Lqd0yuIw1iXM/9RHieg1sjVA5UNk48bSc8mW5Pkk=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200613030450epcas5p44c361ac88dcedcaaea3af8510792b754~X_3kPso5X1361613616epcas5p4k;
 Sat, 13 Jun 2020 03:04:50 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 87.43.09475.25244EE5; Sat, 13 Jun 2020 12:04:50 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200613030449epcas5p3cb1139c47ed1c9055c22facf2f5a933b~X_3jRrmkG2337923379epcas5p3J;
 Sat, 13 Jun 2020 03:04:49 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200613030449epsmtrp20eaba93413a849007a91638c1cb26658~X_3jRAivs2362123621epsmtrp2w;
 Sat, 13 Jun 2020 03:04:49 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-c3-5ee442523541
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 02.C4.08303.15244EE5; Sat, 13 Jun 2020 12:04:49 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200613030447epsmtip28b01438409c01baec22211f5fd88a7a9~X_3hV4yPF0718207182epsmtip2C;
 Sat, 13 Jun 2020 03:04:47 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [RESEND PATCH v10 06/10] dt-bindings: phy: Document Samsung UFS PHY
 bindings
Date: Sat, 13 Jun 2020 08:17:02 +0530
Message-Id: <20200613024706.27975-7-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200613024706.27975-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNKsWRmVeSWpSXmKPExsWy7bCmpm6Q05M4g9nLFSwezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4Mr41befseCCaEXLrPPsDYzXBLoYOTkkBEwkdkw6wdzFyMUh
 JLCbUWLLx3YWCOcTo8Sxm6fZQaqEBD4zSny6qtHFyAHWcWkeP0TNLkaJ+bsuQjW0MElc23yL
 FaSBTUBb4u70LUwgtoiAsMSRb22MIDazwEsmiV2PCkBsYYFwiQtrpoDVsAioSkxfuBHM5hWw
 kXh/7jsjxHnyEqs3HGAGsTkFbCUO/l8AVSMocXLmExaImfISzVtng70gIXCBQ2LO/W0sEM0u
 Eueuv2aHsIUlXh3fAmVLSXx+t5cN4ptsiZ5dxhDhGoml845BtdpLHLgyhwWkhFlAU2L9Ln2I
 VXwSvb+fMEF08kp0tAlBVKtKNL+7CtUpLTGxu5sVwvaQ+LLgEjQIJwCD8DrjBEb5WUgemIXk
 gVkIyxYwMq9ilEwtKM5NTy02LTDOSy3XK07MLS7NS9dLzs/dxAhOX1reOxgfPfigd4iRiYPx
 EKMEB7OSCK+g+MM4Id6UxMqq1KL8+KLSnNTiQ4zSHCxK4rxKP87ECQmkJ5akZqemFqQWwWSZ
 ODilGph8midoSL9frtCoPPXUngCpFSkzfm6zUNr43eX86zMne0vWyz6+mbLgxq1fDX/4b/x5
 /bNz+78TOyuuLLn8e5qnnpyYt+CDW4XbFqmsjNa76M99KJxPRdy8NvJYkpCvU8zq+NdvXByb
 Pn/QMyiaIizs4r7yUcyPFVMfW14Tb0yVd14tpjFfYwVnUPWn8HP2t+/88vmhteuve5u+VPL2
 qPCOSVelrqinJBq+++pi3Bt1ZGYQ262a+g07IxYcz1y3RCKE/3/u05hnbtJ3eKat69i46dIq
 s4OL0pb6rKmN6WpsXblLlaE64uD+UE25mp89Bk9uVDy51SZnmvOsX1Xij+cbbqt5Zgcjp/7e
 +Pzx7C3LlFiKMxINtZiLihMBWLiGgs4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsWy7bCSvG6g05M4g433FSwezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4Mr41befseCCaEXLrPPsDYzXBLoYOTgkBEwkLs3j72Lk4hAS
 2MEocWDuCqYuRk6guLTE9Y0T2CFsYYmV/56zQxQ1MUl8/XWNESTBJqAtcXf6FrAGEaCiI9/a
 GEGKmAW+M0kcmDCBGSQhLBAqMWnlDzYQm0VAVWL6wo1gDbwCNhLvz31nhNggL7F6wwGwek4B
 W4mD/xeA1QgB1ew++pMVol5Q4uTMJywgVzMLqEusnycEEmYGam3eOpt5AqPgLCRVsxCqZiGp
 WsDIvIpRMrWgODc9t9iwwCgvtVyvODG3uDQvXS85P3cTIzjetLR2MO5Z9UHvECMTB+MhRgkO
 ZiURXkHxh3FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeb/OWhgnJJCeWJKanZpakFoEk2Xi4JRq
 YLKXjDB4fEkn7KPMl7W/0mcXelQfy/9s9G91wF2/2zLSbtWLKmX2+FxM9tPX25x5KG4rw99Z
 8zfnVGnsC0sq3nuidnn3G6GmQvFSeQ+7C/PS5r+aISiv6ZF8kvd3TfvD4/NedsrPf21yyiHc
 g+Oe4uIF76qPB5xgKzrk3WNodtPHmHNTpFp/vYXcxIccPy+stbjzondKSfBS/9fnb8Q0S828
 tpztk5n1IfWbRatfFSrefJIw8+bd6YGbJJv+f415x6Sn/WD3ovD1mfp8rC8Y3x5T0tBb8cjh
 aL+bglDV0q6QaWe/9mx9UN/5rUhleSxn9SWb4iSLU+2Xpkx8dTGvcvXtVfffftgyyeXglW07
 Y7yUWIozEg21mIuKEwHcC+QhJgMAAA==
X-CMS-MailID: 20200613030449epcas5p3cb1139c47ed1c9055c22facf2f5a933b
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030449epcas5p3cb1139c47ed1c9055c22facf2f5a933b
References: <20200613024706.27975-1-alim.akhtar@samsung.com>
 <CGME20200613030449epcas5p3cb1139c47ed1c9055c22facf2f5a933b@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_200453_848110_910B62A8 
X-CRM114-Status: GOOD (  12.41  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com, kishon@ti.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBkb2N1bWVudHMgU2Ftc3VuZyBVRlMgUEhZIGRldmljZSB0cmVlIGJpbmRpbmdz
CgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1i
eTogQWxpbSBBa2h0YXIgPGFsaW0uYWtodGFyQHNhbXN1bmcuY29tPgpUZXN0ZWQtYnk6IFBhd2XF
giBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4KLS0tCiAuLi4vYmluZGlu
Z3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sICAgICAgICAgfCA3NSArKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5Lnlh
bWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Nh
bXN1bmcsdWZzLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9zYW1zdW5nLHVmcy1waHkueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAw
MDAwMDAuLjYzNmNjNTAxYjU0ZgotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwKQEAgLTAsMCArMSw3NSBA
QAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVz
ZQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5
L3NhbXN1bmcsdWZzLXBoeS55YW1sIworJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21l
dGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBTYW1zdW5nIFNvQyBzZXJpZXMgVUZTIFBI
WSBEZXZpY2UgVHJlZSBCaW5kaW5ncworCittYWludGFpbmVyczoKKyAgLSBBbGltIEFraHRhciA8
YWxpbS5ha2h0YXJAc2Ftc3VuZy5jb20+CisKK3Byb3BlcnRpZXM6CisgICIjcGh5LWNlbGxzIjoK
KyAgICBjb25zdDogMAorCisgIGNvbXBhdGlibGU6CisgICAgZW51bToKKyAgICAgIC0gc2Ftc3Vu
ZyxleHlub3M3LXVmcy1waHkKKworICByZWc6CisgICAgbWF4SXRlbXM6IDEKKworICByZWctbmFt
ZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0OiBwaHktcG1hCisKKyAgY2xvY2tzOgorICAg
IGl0ZW1zOgorICAgICAgLSBkZXNjcmlwdGlvbjogUExMIHJlZmVyZW5jZSBjbG9jaworICAgICAg
LSBkZXNjcmlwdGlvbjogc3ltYm9sIGNsb2NrIGZvciBpbnB1dCBzeW1ib2wgKCByeDAtY2gwIHN5
bWJvbCBjbG9jaykKKyAgICAgIC0gZGVzY3JpcHRpb246IHN5bWJvbCBjbG9jayBmb3IgaW5wdXQg
c3ltYm9sICggcngxLWNoMSBzeW1ib2wgY2xvY2spCisgICAgICAtIGRlc2NyaXB0aW9uOiBzeW1i
b2wgY2xvY2sgZm9yIG91dHB1dCBzeW1ib2wgKCB0eDAgc3ltYm9sIGNsb2NrKQorCisgIGNsb2Nr
LW5hbWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogcmVmX2NsaworICAgICAgLSBjb25z
dDogcngxX3N5bWJvbF9jbGsKKyAgICAgIC0gY29uc3Q6IHJ4MF9zeW1ib2xfY2xrCisgICAgICAt
IGNvbnN0OiB0eDBfc3ltYm9sX2NsaworCisgIHNhbXN1bmcscG11LXN5c2NvbjoKKyAgICAkcmVm
OiAnL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZScKKyAgICBkZXNjcmlw
dGlvbjogcGhhbmRsZSBmb3IgUE1VIHN5c3RlbSBjb250cm9sbGVyIGludGVyZmFjZSwgdXNlZCB0
bworICAgICAgICAgICAgICAgICBjb250cm9sIHBtdSByZWdpc3RlcnMgYml0cyBmb3IgdWZzIG0t
cGh5CisKK3JlcXVpcmVkOgorICAtICIjcGh5LWNlbGxzIgorICAtIGNvbXBhdGlibGUKKyAgLSBy
ZWcKKyAgLSByZWctbmFtZXMKKyAgLSBjbG9ja3MKKyAgLSBjbG9jay1uYW1lcworICAtIHNhbXN1
bmcscG11LXN5c2NvbgorCithZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKKworZXhhbXBsZXM6
CisgIC0gfAorICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9leHlub3M3LWNsay5oPgor
CisgICAgdWZzX3BoeTogdWZzLXBoeUAxNTU3MTgwMCB7CisgICAgICAgIGNvbXBhdGlibGUgPSAi
c2Ftc3VuZyxleHlub3M3LXVmcy1waHkiOworICAgICAgICByZWcgPSA8MHgxNTU3MTgwMCAweDI0
MD47CisgICAgICAgIHJlZy1uYW1lcyA9ICJwaHktcG1hIjsKKyAgICAgICAgc2Ftc3VuZyxwbXUt
c3lzY29uID0gPCZwbXVfc3lzdGVtX2NvbnRyb2xsZXI+OworICAgICAgICAjcGh5LWNlbGxzID0g
PDA+OworICAgICAgICBjbG9ja3MgPSA8JmNsb2NrX2ZzeXMxIFNDTEtfQ09NQk9fUEhZX0VNQkVE
REVEXzI2TT4sCisgICAgICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIwX1JY
MV9TWU1CT0xfVVNFUj4sCisgICAgICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VG
UzIwX1JYMF9TWU1CT0xfVVNFUj4sCisgICAgICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZ
Q0xLX1VGUzIwX1RYMF9TWU1CT0xfVVNFUj47CisgICAgICAgIGNsb2NrLW5hbWVzID0gInJlZl9j
bGsiLCAicngxX3N5bWJvbF9jbGsiLAorICAgICAgICAgICAgICAgICAgICAgICJyeDBfc3ltYm9s
X2NsayIsICJ0eDBfc3ltYm9sX2NsayI7CisKKyAgICB9OworLi4uCi0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
