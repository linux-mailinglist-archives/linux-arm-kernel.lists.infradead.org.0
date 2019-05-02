Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B01D11D1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 17:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNJP2JA96uMsShXe6sLjrR5sq4fXai9BBQtAFm5mJ1A=; b=TevrXZIhkERw1X
	fu/0ozxltyM82JSHxOrOHB7y/Q0e88tUSZ/PQ5u6A/TxLA2KcpjoWmY1OJcobzHEgvDDtN3Myavkt
	KI0bHtr25KQLl8nkfjpkff3k0Jdo6tNmiU3bvxv/7mhwl/W2ALI32OPFu4UE8WgTgHS/BhcJopWb8
	CiY0kTtN+WxoI0fddW4pj8OZYpseTQWWFLUdxBdFu6e8101O7awbyPVNVpzJVLxUgDk/Z7dVXylgN
	1h3aQOJR9GFULVtceq/AOCfGk3ocCQvHMSK8ixoTRcSzUCSeUyWViDxSmaSp/3I62qjQ7I83fmYJ/
	N4bn6RuYlGtHzN5ysvew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDdt-0001yC-Io; Thu, 02 May 2019 15:29:01 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDdm-0001wU-92
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 15:28:55 +0000
Received: by mail-lf1-x143.google.com with SMTP id j11so2231469lfm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 08:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=prm1fyhXs0jWTAHPn6CLV/HtaSlxTqydNTX71G2xSCs=;
 b=r0Ah6TDQTHwK7cH76U0v6wgZe6avx5iEHW7ZyZtQeMWJ0BM96xdA5Cl0z7TybVCWq2
 GdJs4hBIjaMk2+bN1HDaTf6zOqe5hO2sgp6ZtwfTS5/fgwSJDtrNJWjCDsbNjpl3/Sa4
 pymiyFG6nYLpfuMR0Z6lMg2u0eUJ4y2Q7N2OfhBsIvVvaOFxPAvTamFXL7Nc7D/v6Wfu
 IAjQPZdRp88rdrNlYeCMsQUlqoccabRM797x4zAWUFICHLLBwyerZdw7uU9+/LxV2+Cf
 JPDpJOTOT9fun6uCI1IgogwQHc91rbibBlm3/21cJycV86XiKrFcKaWknQV1nMlUbn7F
 S9lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=prm1fyhXs0jWTAHPn6CLV/HtaSlxTqydNTX71G2xSCs=;
 b=GsuQ/Zju/LlzHD994ZW8ddIxfCyPnqkEQkE/sHNuHUiqK1z9rMNYbCiKuPoAgHXMCu
 XnLV7ZnqqRAEa7RfFfCUR5P/IxwSjEWeJDQuZM6mkz1noQCW77uVrIaqXAe8n0J6MEwa
 UAZ8HbkhOBDN5AXGdhaBFqxS3j1SEVj26lO8aomRipP55pt80pB4UjZnlf1PBDpxTl1s
 eCZyxrWSl7Qh5SOrQuQRQTJUfqrP4tuSlDad6iUVd3AmLysQgMWpYVn/wqmBjxV9MBA1
 1U1ORCeIsfNvC0eROtP5q8bNWFtWenQfeipU+SQYda+GbMBV7aQCyYayaI5Aa3z1/LVz
 MbYg==
X-Gm-Message-State: APjAAAWutVKNVrH2ysH1lqtwRfMET7/y3mAQVibpXXiWqMd5I6Lozbfl
 gkbChbxI0jIynoy1gZ0i9PbpqbyRyEoYqCE9Vbo=
X-Google-Smtp-Source: APXvYqzMcVGIejleD+/wKh8TcnzqGnJxMNAmrH86SrHVOreuURuClXNb7c4WEX+3sFRf5peisBBVvSR/1IhjXSA4LuM=
X-Received: by 2002:a19:f001:: with SMTP id p1mr2498539lfc.27.1556810932481;
 Thu, 02 May 2019 08:28:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190430074730.8236-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190430074730.8236-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 2 May 2019 12:28:46 -0300
Message-ID: <CAOMZO5D=BHWgOieLfz4bxL8v4bDmNOutUUnYSzW89KNtYn=Z9g@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6ul: Add csi node
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>, 
 Rui Miguel Silva <rui.silva@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_082854_341319_754F52B5 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

W0FkZGluZyBSdWldCgpPbiBUdWUsIEFwciAzMCwgMjAxOSBhdCA0OjQ3IEFNIFPDqWJhc3RpZW4g
U3p5bWFuc2tpCjxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4gd3JvdGU6Cj4KPiBB
ZGQgY3NpIG5vZGUgZm9yIGkuTVg2VUwgU29DLgo+Cj4gU2lnbmVkLW9mZi1ieTogU8OpYmFzdGll
biBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPgo+IC0tLQo+ICBh
cmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSB8IDExICsrKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnVsLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQo+IGluZGV4IDYy
ZWQzMGM3ODFlZC4uYWYzMjJiYzU4MzMzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZ1bC5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kKPiBAQCAt
OTUxLDYgKzk1MSwxNyBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICB9Owo+Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY3Np
OiBjc2lAMjFjNDAwMCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRp
YmxlID0gImZzbCxpbXg2dWwtY3NpIiwgImZzbCxpbXg3LWNzaSI7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICByZWcgPSA8MHgwMjFjNDAwMCAweDQwMDA+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVfTEVW
RUxfSElHSD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNs
a3MgSU1YNlVMX0NMS19EVU1NWT4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8JmNsa3MgSU1YNlVMX0NMS19DU0k+LAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPCZjbGtzIElNWDZVTF9DTEtfRFVNTVk+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXhpIiwgIm1jbGsiLCAiZGNpYyI7
CgpBbHNvLCBJIHVuZGVyc3RhbmQgeW91IGZvbGxvd2VkCkRvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZWRpYS9pbXg3LWNzaS50eHQgYW5kIHBhc3NlZCB0aGVzZQp0aHJlZSBjbG9j
a3MsIGJ1dCBsb29raW5nIGF0IHRoZSBpLk1YN0QgYW5kIGkuTVg2VUwvVUxMIFJlZmVyZW5jZQpN
YW51YWxzLCBJIGRvbid0IGZpbmQgdGhlICB0aGUgZGVzY3JpcHRpb25zIGZvciB0aGUgImF4aSIg
YW5kICJkY2ljIgpDU0kgY2xvY2tzLgoKSXQgbG9va3MgbGlrZSB0aGF0IG9ubHkgIm1jbGsiIGlz
IHdoYXQgd2UgcmVhbGx5IG5lZWQgaGVyZS4KClNob3VsZCB3ZSBjaGFuZ2UgdGhlIGJpbmRpbmdz
IGFuZCB0aGUgaW14Ny1jc2kgZHJpdmVyIHRvIG5vdCByZXF1ZXN0CiJheGkiIGFuZCAiZGNpYyIg
Y2xvY2tzPwoKUnVpLCB3aGF0IGRvIHlvdSB0aGluaz8gSWYgeW91IGFncmVlIEkgY2FuIHNlbmQg
YSBmaXggZm9yIHRoaXMuCgpUaGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
