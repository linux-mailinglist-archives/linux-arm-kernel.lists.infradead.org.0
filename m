Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D4518D7A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41M2/pi0OSClis+/OP5uG7stPsVKGxXv/dU+Xi6giWc=; b=pwlpxswOEnaiUy
	pksDGT+3PW0GT1OtpX0pXDpfZWiadRWOgAj9HBohbOearIvyyU3hAU90Iv0jgMyXvneLBEvD8o/8o
	vo+v0maYRrlzLl9s3TSeaO2HjY/b2qYNbhUYkxCl9UgEveb0PtmLKsZK+HwLa9vqAIosLxks6OPUP
	i1nefPGyY2YOR4ZHatJ0M15PtRdBD99ULTRCqaRbk0HkoyoQNN13xGvRstn9DBkZWrLjMzgwzX/Pl
	0e8xAGHl2c4zxd8IU+od740KxilqjOSJRurfgwrpJlO8ifugZ+/msaxhoUyl2YS4C62AGjX9OwzTz
	b3s2R5MN++t5KKExYRgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMi5-0003k0-GL; Fri, 20 Mar 2020 18:49:33 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMhs-0003in-9N
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:49:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 7D9DEFB05;
 Fri, 20 Mar 2020 19:49:14 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VnWqDVD2wUpe; Fri, 20 Mar 2020 19:49:11 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id E2831412BB; Fri, 20 Mar 2020 19:49:10 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Robert Chiras <robert.chiras@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v10 1/2] dt-bindings: display/bridge: Add binding for NWL mipi
 dsi host controller
Date: Fri, 20 Mar 2020 19:49:09 +0100
Message-Id: <c7fd138e00608a108dae3651ab10d583a60040fc.1584730033.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1584730033.git.agx@sigxcpu.org>
References: <cover.1584730033.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_114920_496143_93E73FB2 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIE5vcnRod2VzdCBMb2dpYyBNSVBJIERTSSBJUCBjb3JlIGNhbiBiZSBmb3VuZCBpbiBOWFBz
IGkuTVg4IFNvQ3MuCgpTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUu
b3JnPgpUZXN0ZWQtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KUmV2
aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkFja2VkLWJ5OiBTYW0gUmF2
bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+Ci0tLQogLi4uL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdl
L253bC1kc2kueWFtbCAgICAgIHwgMjE2ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDIxNiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbAoKZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wt
ZHNpLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlk
Z2UvbndsLWRzaS55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4u
ZWMxZTdlMTI3MTlkCi0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL253bC1kc2kueWFtbApAQCAtMCwwICsxLDIxNiBAQAor
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2Up
CislWUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kaXNw
bGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcv
bWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IE5vcnRod2VzdCBMb2dpYyBNSVBJLURT
SSBjb250cm9sbGVyIG9uIGkuTVggU29DcworCittYWludGFpbmVyczoKKyAgLSBHdWlkbyBHw7pu
dGhlciA8YWd4QHNpZ3hjcHUub3JnPgorICAtIFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNA
bnhwLmNvbT4KKworZGVzY3JpcHRpb246IHwKKyAgTldMIE1JUEktRFNJIGhvc3QgY29udHJvbGxl
ciBmb3VuZCBvbiBpLk1YOCBwbGF0Zm9ybXMuIFRoaXMgaXMgYSBkc2kgYnJpZGdlIGZvcgorICB0
aGUgU09DcyBOV0wgTUlQSS1EU0kgaG9zdCBjb250cm9sbGVyLgorCitwcm9wZXJ0aWVzOgorICBj
b21wYXRpYmxlOgorICAgIGNvbnN0OiBmc2wsaW14OG1xLW53bC1kc2kKKworICByZWc6CisgICAg
bWF4SXRlbXM6IDEKKworICBpbnRlcnJ1cHRzOgorICAgIG1heEl0ZW1zOiAxCisKKyAgJyNhZGRy
ZXNzLWNlbGxzJzoKKyAgICBjb25zdDogMQorCisgICcjc2l6ZS1jZWxscyc6CisgICAgY29uc3Q6
IDAKKworICBjbG9ja3M6CisgICAgaXRlbXM6CisgICAgICAtIGRlc2NyaXB0aW9uOiBEU0kgY29y
ZSBjbG9jaworICAgICAgLSBkZXNjcmlwdGlvbjogUlhfRVNDIGNsb2NrICh1c2VkIGluIGVzY2Fw
ZSBtb2RlKQorICAgICAgLSBkZXNjcmlwdGlvbjogVFhfRVNDIGNsb2NrICh1c2VkIGluIGVzY2Fw
ZSBtb2RlKQorICAgICAgLSBkZXNjcmlwdGlvbjogUEhZX1JFRiBjbG9jaworICAgICAgLSBkZXNj
cmlwdGlvbjogTENESUYgY2xvY2sKKworICBjbG9jay1uYW1lczoKKyAgICBpdGVtczoKKyAgICAg
IC0gY29uc3Q6IGNvcmUKKyAgICAgIC0gY29uc3Q6IHJ4X2VzYworICAgICAgLSBjb25zdDogdHhf
ZXNjCisgICAgICAtIGNvbnN0OiBwaHlfcmVmCisgICAgICAtIGNvbnN0OiBsY2RpZgorCisgIG11
eC1jb250cm9sczoKKyAgICBkZXNjcmlwdGlvbjoKKyAgICAgIG11eCBjb250cm9sbGVyIG5vZGUg
dG8gdXNlIGZvciBvcGVyYXRpbmcgdGhlIGlucHV0IG11eAorCisgIHBoeXM6CisgICAgbWF4SXRl
bXM6IDEKKyAgICBkZXNjcmlwdGlvbjoKKyAgICAgIEEgcGhhbmRsZSB0byB0aGUgcGh5IG1vZHVs
ZSByZXByZXNlbnRpbmcgdGhlIERQSFkKKworICBwaHktbmFtZXM6CisgICAgaXRlbXM6CisgICAg
ICAtIGNvbnN0OiBkcGh5CisKKyAgcG93ZXItZG9tYWluczoKKyAgICBtYXhJdGVtczogMQorCisg
IHJlc2V0czoKKyAgICBpdGVtczoKKyAgICAgIC0gZGVzY3JpcHRpb246IGRzaSBieXRlIHJlc2V0
IGxpbmUKKyAgICAgIC0gZGVzY3JpcHRpb246IGRzaSBkcGkgcmVzZXQgbGluZQorICAgICAgLSBk
ZXNjcmlwdGlvbjogZHNpIGVzYyByZXNldCBsaW5lCisgICAgICAtIGRlc2NyaXB0aW9uOiBkc2kg
cGNsayByZXNldCBsaW5lCisKKyAgcmVzZXQtbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNv
bnN0OiBieXRlCisgICAgICAtIGNvbnN0OiBkcGkKKyAgICAgIC0gY29uc3Q6IGVzYworICAgICAg
LSBjb25zdDogcGNsaworCisgIHBvcnRzOgorICAgIHR5cGU6IG9iamVjdAorICAgIGRlc2NyaXB0
aW9uOgorICAgICAgQSBub2RlIGNvbnRhaW5pbmcgRFNJIGlucHV0ICYgb3V0cHV0IHBvcnQgbm9k
ZXMgd2l0aCBlbmRwb2ludAorICAgICAgZGVmaW5pdGlvbnMgYXMgZG9jdW1lbnRlZCBpbgorICAg
ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dyYXBoLnR4dC4KKyAgICBwcm9w
ZXJ0aWVzOgorICAgICAgcG9ydEAwOgorICAgICAgICB0eXBlOiBvYmplY3QKKyAgICAgICAgZGVz
Y3JpcHRpb246CisgICAgICAgICAgSW5wdXQgcG9ydCBub2RlIHRvIHJlY2VpdmUgcGl4ZWwgZGF0
YSBmcm9tIHRoZQorICAgICAgICAgIGRpc3BsYXkgY29udHJvbGxlci4gRXhhY3RseSBvbmUgZW5k
cG9pbnQgbXVzdCBiZQorICAgICAgICAgIHNwZWNpZmllZC4KKyAgICAgICAgcHJvcGVydGllczoK
KyAgICAgICAgICAnI2FkZHJlc3MtY2VsbHMnOgorICAgICAgICAgICAgY29uc3Q6IDEKKworICAg
ICAgICAgICcjc2l6ZS1jZWxscyc6CisgICAgICAgICAgICBjb25zdDogMAorCisgICAgICAgICAg
ZW5kcG9pbnRAMDoKKyAgICAgICAgICAgIGRlc2NyaXB0aW9uOiBzdWItbm9kZSBkZXNjcmliaW5n
IHRoZSBpbnB1dCBmcm9tIExDRElGCisgICAgICAgICAgICB0eXBlOiBvYmplY3QKKworICAgICAg
ICAgIGVuZHBvaW50QDE6CisgICAgICAgICAgICBkZXNjcmlwdGlvbjogc3ViLW5vZGUgZGVzY3Jp
YmluZyB0aGUgaW5wdXQgZnJvbSBEQ1NTCisgICAgICAgICAgICB0eXBlOiBvYmplY3QKKworICAg
ICAgICAgIHJlZzoKKyAgICAgICAgICAgIGNvbnN0OiAwCisKKyAgICAgICAgcmVxdWlyZWQ6Cisg
ICAgICAgICAgLSAnI2FkZHJlc3MtY2VsbHMnCisgICAgICAgICAgLSAnI3NpemUtY2VsbHMnCisg
ICAgICAgICAgLSByZWcKKyAgICAgICAgYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisKKyAg
ICAgIHBvcnRAMToKKyAgICAgICAgdHlwZTogb2JqZWN0CisgICAgICAgIGRlc2NyaXB0aW9uOgor
ICAgICAgICAgIERTSSBvdXRwdXQgcG9ydCBub2RlIHRvIHRoZSBwYW5lbCBvciB0aGUgbmV4dCBi
cmlkZ2UKKyAgICAgICAgICBpbiB0aGUgY2hhaW4KKworICAgICAgJyNhZGRyZXNzLWNlbGxzJzoK
KyAgICAgICAgY29uc3Q6IDEKKworICAgICAgJyNzaXplLWNlbGxzJzoKKyAgICAgICAgY29uc3Q6
IDAKKworICAgIHJlcXVpcmVkOgorICAgICAgLSAnI2FkZHJlc3MtY2VsbHMnCisgICAgICAtICcj
c2l6ZS1jZWxscycKKyAgICAgIC0gcG9ydEAwCisgICAgICAtIHBvcnRAMQorCisgICAgYWRkaXRp
b25hbFByb3BlcnRpZXM6IGZhbHNlCisKK3BhdHRlcm5Qcm9wZXJ0aWVzOgorICAiXnBhbmVsQFsw
LTldKyQiOgorICAgIHR5cGU6IG9iamVjdAorCityZXF1aXJlZDoKKyAgLSAnI2FkZHJlc3MtY2Vs
bHMnCisgIC0gJyNzaXplLWNlbGxzJworICAtIGNsb2NrLW5hbWVzCisgIC0gY2xvY2tzCisgIC0g
Y29tcGF0aWJsZQorICAtIGludGVycnVwdHMKKyAgLSBtdXgtY29udHJvbHMKKyAgLSBwaHktbmFt
ZXMKKyAgLSBwaHlzCisgIC0gcG9ydHMKKyAgLSByZWcKKyAgLSByZXNldC1uYW1lcworICAtIHJl
c2V0cworCithZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKKworZXhhbXBsZXM6CisgLSB8CisK
KyAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9pbXg4bXEtY2xvY2suaD4KKyAgICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+CisgICAjaW5j
bHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvaW14OG1xLXJlc2V0Lmg+CisKKyAgIG1pcGlfZHNpOiBt
aXBpX2RzaUAzMGEwMDAwMCB7CisgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owor
ICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKKyAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJmc2wsaW14OG1xLW53bC1kc2kiOworICAgICAgICAgICAgICByZWcgPSA8MHgzMEEwMDAw
MCAweDMwMD47CisgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfRFNJX0NP
UkU+LAorICAgICAgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0RTSV9BSEI+LAor
ICAgICAgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX0RTSV9JUEdfRElWPiwKKyAg
ICAgICAgICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1RX0NMS19EU0lfUEhZX1JFRj4sCisgICAg
ICAgICAgICAgICAgICAgICAgIDwmY2xrIElNWDhNUV9DTEtfTENESUZfUElYRUw+OworICAgICAg
ICAgICAgICBjbG9jay1uYW1lcyA9ICJjb3JlIiwgInJ4X2VzYyIsICJ0eF9lc2MiLCAicGh5X3Jl
ZiIsICJsY2RpZiI7CisgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAzNCBJUlFf
VFlQRV9MRVZFTF9ISUdIPjsKKyAgICAgICAgICAgICAgbXV4LWNvbnRyb2xzID0gPCZtdXggMD47
CisgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBnY19taXBpPjsKKyAgICAgICAgICAg
ICAgcmVzZXRzID0gPCZzcmMgSU1YOE1RX1JFU0VUX01JUElfRFNJX1JFU0VUX0JZVEVfTj4sCisg
ICAgICAgICAgICAgICAgICAgICAgIDwmc3JjIElNWDhNUV9SRVNFVF9NSVBJX0RTSV9EUElfUkVT
RVRfTj4sCisgICAgICAgICAgICAgICAgICAgICAgIDwmc3JjIElNWDhNUV9SRVNFVF9NSVBJX0RT
SV9FU0NfUkVTRVRfTj4sCisgICAgICAgICAgICAgICAgICAgICAgIDwmc3JjIElNWDhNUV9SRVNF
VF9NSVBJX0RTSV9QQ0xLX1JFU0VUX04+OworICAgICAgICAgICAgICByZXNldC1uYW1lcyA9ICJi
eXRlIiwgImRwaSIsICJlc2MiLCAicGNsayI7CisgICAgICAgICAgICAgIHBoeXMgPSA8JmRwaHk+
OworICAgICAgICAgICAgICBwaHktbmFtZXMgPSAiZHBoeSI7CisKKyAgICAgICAgICAgICAgcGFu
ZWxAMCB7CisgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrdGVjaCxqaDA1
N24wMDkwMCI7CisgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDA+OworICAgICAgICAgICAg
ICAgICAgICAgIHBvcnRAMCB7CisgICAgICAgICAgICAgICAgICAgICAgICAgICBwYW5lbF9pbjog
ZW5kcG9pbnQgeworICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1l
bmRwb2ludCA9IDwmbWlwaV9kc2lfb3V0PjsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgIH07
CisgICAgICAgICAgICAgICAgICAgICAgfTsKKyAgICAgICAgICAgICAgfTsKKworICAgICAgICAg
ICAgICBwb3J0cyB7CisgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owor
ICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKKworICAgICAgICAgICAgICAg
ICAgICBwb3J0QDAgeworICAgICAgICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8
MD47CisgICAgICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgIG1pcGlfZHNpX2luOiBlbmRwb2ludEAwIHsKKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICByZWcgPSA8MD47CisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZsY2RpZl9taXBpX2RzaT47CisgICAgICAg
ICAgICAgICAgICAgICAgICAgICB9OworICAgICAgICAgICAgICAgICAgICB9OworICAgICAgICAg
ICAgICAgICAgICBwb3J0QDEgeworICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDE+
OworICAgICAgICAgICAgICAgICAgICAgICAgICAgbWlwaV9kc2lfb3V0OiBlbmRwb2ludCB7Cisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9
IDwmcGFuZWxfaW4+OworICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKKyAgICAgICAgICAg
ICAgICAgICAgfTsKKyAgICAgICAgICAgICAgfTsKKyAgICAgIH07Ci0tIAoyLjIzLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
