Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915491D2453
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNJeWwjT5GYlO1gX+fypNBJgi6ThILec8fJV0MH2jsE=; b=d25d1TeRbmkHC4
	Gk/D03+MLNdGQ2n5lILYKs7iMFXX6r99FiHMqqjjZvc5Ng6aBJWK2efIqZz4D5I3XrIr2ZrXpeI8m
	rDxJObMSJo/22ZtqNEYr5jg69lUikTdUjS2gBwRutuGgKtS6wRGk5J/Tktw3QwbXhPo2zn75oJe38
	7nyRL9bwTLAOgwaRq7ZKEUTxCylZkbtVb6Vs9I8XYvlk1Q/7HfGSx1WE7pXQ6LAve1d5/ovadcKvK
	eXeXyJnDt64rmy37LEa1lOGcjWqnkjTP+iwV3KfsLQDtSGc8yPXjW2NfWrl0sPR9lnYn4c9Jdv82Y
	vOXvYygpTKL8kwcAc3KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ29C-00022b-LK; Thu, 14 May 2020 00:54:50 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ27c-0000wI-3f
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:53:19 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200514005305epoutp0393e68bffd64614f899a3ec7091401bd5~Ovt_TI-lr0811808118epoutp03j
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:53:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200514005305epoutp0393e68bffd64614f899a3ec7091401bd5~Ovt_TI-lr0811808118epoutp03j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589417586;
 bh=DDMCtAVCNOenQhQBx8fCmPqcdSKUIHqMO34BELtm7U8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fQdMBxEc3L2+WffDjQ9ZV56VN5301Z5utWItEqJgRyaQciGK1BcJXcZU+7SUBVBRM
 8U3VWtRlNrNMKU84V6bbAv+VdrIXrEBCsZspqCow5ER7PXE5u+EBjF7wquXBHtx20x
 Kd3txFE3WnIChBjbWqtUL34qMUmRXFyq964iUq50=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200514005305epcas5p46fe6ee93d80fa03efeb41a2d276f382a~Ovt9mHVCY0660506605epcas5p4K;
 Thu, 14 May 2020 00:53:05 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 47.7E.23389.1769CBE5; Thu, 14 May 2020 09:53:05 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200514005304epcas5p37a311f813416383b6de8af6e809b350d~Ovt9REbwM0461904619epcas5p3S;
 Thu, 14 May 2020 00:53:04 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200514005304epsmtrp2db26465d2d8f3551167e82cf61e517fc~Ovt9QTndV1522815228epsmtrp2S;
 Thu, 14 May 2020 00:53:04 +0000 (GMT)
X-AuditID: b6c32a4b-7adff70000005b5d-f9-5ebc9671d30c
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 17.82.25866.0769CBE5; Thu, 14 May 2020 09:53:04 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005302epsmtip2dbb136258d86cd9c3268230721ddeb37~Ovt7TwN1T0066900669epsmtip25;
 Thu, 14 May 2020 00:53:02 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v9 06/10] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Thu, 14 May 2020 06:09:10 +0530
Message-Id: <20200514003914.26052-7-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514003914.26052-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPKsWRmVeSWpSXmKPExsWy7bCmum7htD1xBqtesVs8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujF99+xkLLohWtMw6z97AeE2gi5GDQ0LAROLBj5IuRi4OIYHdjBL/m34xQTif
 GCXeH+sFcjiBnM+MEpdOeYHYIA2Nq64yQxTtYpTYs6aREaKohUnixpM0EJtNQFvi7vQtYM0i
 AsISR761gdUwC9xgkniw0gVks7CAv8SRdg8Qk0VAVeLQnXyQCl4BG4kt638wQ6ySl1i94QCY
 zSlgK7HlyzFWiBpBiZMzn7BATJSXaN46G+wcCYEDHBJTtp5hh2h2kZjZ0QtlC0u8Or4FypaS
 +PxuLxvE89kSPbuMIcI1EkvnHWOBsO0lDlyZwwJSwiygKbF+lz7EKj6J3t9PmCA6eSU62oQg
 qlUlmt9dheqUlpjY3c0KYXtI7L0+iR0SUBMYJTpenWCbwCg/C8kHs5B8MAth2wJG5lWMkqkF
 xbnpqcWmBcZ5qeV6xYm5xaV56XrJ+bmbGMFpSst7B+OjBx/0DjEycTAeYpTgYFYS4fVbvztO
 iDclsbIqtSg/vqg0J7X4EKM0B4uSOO/jxi1xQgLpiSWp2ampBalFMFkmDk6pBqaqKivHzeev
 L3lw/S3L5qfO2azVN71LL7IqKr3yucbat5fpXsLrY0tP753clm5boDOrmYv5YerrDRFGz0t+
 JD2blDNZvzrA8s3CZYlMu6Im2M8JOyNx9sE+3X2Trb5++Xx/9Y3k7Bonlv5Ftl+l9S4tvf7z
 Je+zKwHbo5zsuOQeb9s+s1Y2+9ou7rynd8WCjmqwzNyyp+fZpWcXDpg8vs/ZfGLV7C3uczyf
 qC+//fnJ1fP1h45yPAg7Vz/5p8VKtWSz+Ye2Xe7ep25RoW6/qWbmPNHisB2/bndOKnp3e/YF
 BhfO1OnuK4x+J86Kr3Sa+9LxXtjamJa7DXwLni7e9UBi8uNWacc9p3dc2evnmLE6/Z8SS3FG
 oqEWc1FxIgCLmpb/wgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42LZdlhJXrdg2p44gxmHtSwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxq++/YwFF0QrWmadZ29gvCbQxcjJISFgItG46ipzFyMXh5DADkaJOTc/sEIk
 pCWub5zADmELS6z895wdoqiJSeLGisdsIAk2AW2Ju9O3MIHYIkBFR761MYLYzALPmCROPSwF
 sYUFfCVu7t7E0sXIwcEioCpx6E4+SJhXwEZiy/ofzBDz5SVWbzgAZnMK2Eps+XIM7AYhoJpl
 a5YxQtQLSpyc+QRsDLOAusT6eUIQm+QlmrfOZp7AKDgLSdUshKpZSKoWMDKvYpRMLSjOTc8t
 Niwwykst1ytOzC0uzUvXS87P3cQIjiwtrR2Me1Z90DvEyMTBeIhRgoNZSYTXb/3uOCHelMTK
 qtSi/Pii0pzU4kOM0hwsSuK8X2ctjBMSSE8sSc1OTS1ILYLJMnFwSjUwnSzbtp0r+FGlzVz+
 qOTk0MlXW18tO9iofMzqR3yPzdvnj78/svd/suCzcMqKQ25n2f4emzm96GaX9NUF+gyquzj3
 bmhtlYjZnVE1YV3vs5Vrlwhs0v59PnvngvY83skKgpvPrXvifeHDpGmWbRovQ+5O2H5TmTf+
 ++ablTW5O1m73mut/ekasdhVxOSQrODp8vj9GjwXJt5itF6edujDnWn/n83wtJy2S5xpWXNy
 x0SmtLio1Or2fcKOsoYtZjtbfWYKTepQXHMo3b0nceO7CU139/9aHKhzlFHoXv/On9JT08xZ
 /zK+eVlyrvtZ2KJ9k86em7Hx57fcrv3ty5aJfc+bHVa10meiWdnUk68XH7+qxFKckWioxVxU
 nAgAMQZ56xsDAAA=
X-CMS-MailID: 20200514005304epcas5p37a311f813416383b6de8af6e809b350d
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005304epcas5p37a311f813416383b6de8af6e809b350d
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005304epcas5p37a311f813416383b6de8af6e809b350d@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_175312_540846_4EA27FAB 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
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
