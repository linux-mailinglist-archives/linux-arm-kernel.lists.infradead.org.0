Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582B510CA70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eT4iLmgNnvqTPadhvqgwsNvrDwyhYkcV1s7J9eXgECY=; b=sPXwAfRvhsMgxVsmo/jUwmptd
	L22ZGnil7ikp6klfbHAO66OfqKA252e9IScue72I6oGWnmo9keUd266YoBWcJ2fV4cOnnrC3aWBCs
	/9qmoRMSdAi2u/gf1ii02AP0HGpHjOoWsn4N8cWilOlnb3NuqENVy0mSui1da4uW4qq0NdHRxVupY
	Cg3agtsLFDH0sewJzCIM9+IABjGuM/DM8abBYVLjkh5ERNdKyL0gB7p6jezgEk7PRMtDG8KgEDgfe
	2x879Tml9K8mKdIDFSGwzg5cJ6tDkfZuLSahnie7r8Q6YkJVwNpVMGycqjRvBfYdVX7knDJBj4NYB
	TAhCPvDlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaKta-000845-Ig; Thu, 28 Nov 2019 14:35:50 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaKtP-00083g-IJ
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:35:41 +0000
Received: by mail-io1-xd42.google.com with SMTP id l17so2961112ioj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ys0oMorfIi7C824w1iSly86fym9t4iyqfpjSyuy5/k0=;
 b=PioA0zCk+Zd1n1my8PwKcIy9bGLuGHvxzfRo+ZfAPyjeRq+t7owhwcYEMQIPTfrnqv
 EU+zFJ8MD/b9LESDZxyRZl+lq98TXlmoP3C/l3/7Yx/44I0GRpe1LHLi9k4z7UBseA4w
 Z4JmUD/WHtxFKrZ7HTsYtdtODVh1WugT0FZSoZyLM+RRL2sb5U1K8ZCuY70/n8frH34T
 N96cyOTf9JtCSEs6/uFNKga29ug5uOeOLvweU8aY2N2RzHXeKaESO32IKOpwhaKWuhr5
 MPyi3LMKkp2CfBjZH1Q70UelnV1rkoMhfNqfa2K8ERWEORXWWR4uYwVK/esOZq7LFZil
 kiNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ys0oMorfIi7C824w1iSly86fym9t4iyqfpjSyuy5/k0=;
 b=siVYYbx0QlhC+PtO8PFat5PQd2qzWzs9cwKsNOMW/mCPrq4eiWelsJK5EOWUs7Sw85
 +12TLQoV5hf3yIckWSN5BH/nYP1Wp5wfzgSXy/2k7S6+TaDIaa21iIv4eoVTjhtETBsd
 RltP0d7WOwqyEr4MA7wSnTZJmYcguzwktrr9wK79Koy0fQFUwbJEJbdYxcKZm+SDYqo2
 /8Zh3pfnrs9prJyI0BN84rCiciHx4ici2IOaF0JfAeJT6+eudE9VB/p3XkIr1o3AVIsL
 ep6oPp9F7HrwtiUIV4f18+kHS7ngfcMtBv7LxZ2dY7Ct9JrhdxVfDA+s2N0J3UhClzF6
 jPUQ==
X-Gm-Message-State: APjAAAUi6wrK7pYaEcgHEI4Ro1oMb/BbU4Og37CEypq7IyXEOIGUsQUR
 ecbgQblaSAyJZMPdvAZOcu1KV+im3zquERlWZoQ=
X-Google-Smtp-Source: APXvYqyoGjY0mx1trgavH/ZA03bPvP02qQfLhuQ1bKJZqfjHvrQEWB4fK7mvLNy2ZuozIPH7DeV9tZeFX3KAwFGNV7c=
X-Received: by 2002:a5d:8953:: with SMTP id b19mr14362242iot.168.1574951738305; 
 Thu, 28 Nov 2019 06:35:38 -0800 (PST)
MIME-Version: 1.0
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-3-anarsoul@gmail.com>
 <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
 <CA+E=qVe22T1uhUo6iq9a82Y9bC014CZSkAtSJJNX4qsn6dJL9w@mail.gmail.com>
 <20191128074325.q47rpzhufwog6mbb@gilmour.lan>
In-Reply-To: <20191128074325.q47rpzhufwog6mbb@gilmour.lan>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Thu, 28 Nov 2019 22:35:26 +0800
Message-ID: <CAEExFWs7A4TcB-QcatfR3w1hUX88dC-Sxd=epQppwB7p2CC6SA@mail.gmail.com>
Subject: Re: [PATCH v6 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
To: Maxime Ripard <mripard@kernel.org>
Content-Type: multipart/mixed; boundary="000000000000e697a30598690697"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_063539_630537_2B858629 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Eduardo Valentin <edubezval@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 devicetree <devicetree@vger.kernel.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--000000000000e697a30598690697
Content-Type: text/plain; charset="UTF-8"

Hi,

How about this?

Best regards,
Yangtao

--000000000000e697a30598690697
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-dt-bindings-thermal-add-YAML-schema-for-sun8i-therma.patch"
Content-Disposition: attachment; 
	filename="0001-dt-bindings-thermal-add-YAML-schema-for-sun8i-therma.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k3itjtrt0>
X-Attachment-Id: f_k3itjtrt0

RnJvbSAzOGRkMGU0MTYyYjY5OGEzMDA3ZDRlZWU3NzFlMzQ4MTBkM2E4ZjlhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBZYW5ndGFvIExpIDx0aW55LndpbmR6ekBnbWFpbC5jb20+CkRh
dGU6IFRodSwgMjggTm92IDIwMTkgMjI6MzE6MjggKzA4MDAKU3ViamVjdDogW1BBVENIXSBkdC1i
aW5kaW5nczogdGhlcm1hbDogYWRkIFlBTUwgc2NoZW1hIGZvciBzdW44aS10aGVybWFsCiBkcml2
ZXIgYmluZGluZ3MKCnN1bjhpLXRoZXJtYWwgZHJpdmVyIHN1cHBvcnRzIHRoZXJtYWwgc2Vuc29y
IGluIHdpZGUgcmFuZ2Ugb2YgQWxsd2lubmVyClNvQ3MuIEFkZCBZQU1MIHNjaGVtYSBmb3IgaXRz
IGJpbmRpbmdzLgoKU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwu
Y29tPgotLS0KIC4uLi9iaW5kaW5ncy90aGVybWFsL3N1bjhpLXRoZXJtYWwueWFtbCAgICAgICB8
IDE2MCArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNjAgaW5zZXJ0aW9ucygr
KQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90
aGVybWFsL3N1bjhpLXRoZXJtYWwueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3N1bjhpLXRoZXJtYWwueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3N1bjhpLXRoZXJtYWwueWFtbApuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjFiZTMyZjA5ZmNjOAotLS0gL2Rldi9u
dWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3N1bjhp
LXRoZXJtYWwueWFtbApAQCAtMCwwICsxLDE2MCBAQAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMAorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvdGhlcm1hbC9zdW44aS10aGVybWFsLnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IEFsbHdpbm5lciBTVU44
SSBUaGVybWFsIENvbnRyb2xsZXIgRGV2aWNlIFRyZWUgQmluZGluZ3MKKworbWFpbnRhaW5lcnM6
CisgIC0gWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwuY29tPgorCitkZXNjcmlwdGlvbjog
fC0KKyAgVGhpcyBkZXNjcmliZXMgdGhlIGRldmljZSB0cmVlIGJpbmRpbmcgZm9yIHRoZSBBbGx3
aW5uZXIgdGhlcm1hbAorICBjb250cm9sbGVyIHdoaWNoIG1lYXN1cmVzIHRoZSBvbi1Tb0MgdGVt
cGVyYXR1cmVzLgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGVudW06CisgICAg
ICAtIGFsbHdpbm5lcixzdW44aS1hODN0LXRocworICAgICAgLSBhbGx3aW5uZXIsc3VuOGktaDMt
dGhzCisgICAgICAtIGFsbHdpbm5lcixzdW44aS1yNDAtdGhzCisgICAgICAtIGFsbHdpbm5lcixz
dW41MGktYTY0LXRocworICAgICAgLSBhbGx3aW5uZXIsc3VuNTBpLWg1LXRocworICAgICAgLSBh
bGx3aW5uZXIsc3VuNTBpLWg2LXRocworCisgIHJlZzoKKyAgICBtYXhJdGVtczogMQorCisgIGlu
dGVycnVwdHM6CisgICAgbWF4SXRlbXM6IDEKKworICByZXNldHM6CisgICAgbWF4SXRlbXM6IDEK
KworICBjbG9ja3M6CisgICAgbWluSXRlbXM6IDEKKyAgICBtYXhJdGVtczogMgorICAgIGl0ZW1z
OgorICAgICAgLSBkZXNjcmlwdGlvbjogdGhzIGJ1cyBjbG9jaworICAgICAgLSBkZXNjcmlwdGlv
bjogdGhzIG1vZCBjbG9jaworCisgIGNsb2NrLW5hbWVzOgorICAgIG1pbkl0ZW1zOiAxCisgICAg
bWF4SXRlbXM6IDIKKyAgICBpdGVtczoKKyAgICAgIC0gY29uc3Q6IGJ1cworICAgICAgLSBjb25z
dDogbW9kCisKKyAgIiN0aGVybWFsLXNlbnNvci1jZWxscyI6CisgICAgZW51bTogWyAwLCAxIF0K
KworICBudm1lbS1jZWxsczoKKyAgICBkZXNjcmlwdGlvbjogdGhzIGNhbGlicmF0ZSBkYXRhCisK
KyAgbnZtZW0tY2VsbC1uYW1lczoKKyAgICBjb25zdDogY2FsaWJyYXRpb24KKworcmVxdWlyZWQ6
CisgIC0gY29tcGF0aWJsZQorICAtIHJlZworICAtIGludGVycnVwdHMKKyAgLSAiI3RoZXJtYWwt
c2Vuc29yLWNlbGxzIgorCithbGxPZjoKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAg
ICAgIGNvbXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBlbnVtOgor
ICAgICAgICAgICAgICAtIGFsbHdpbm5lcixzdW44aS1oMy10aHMKKyAgICAgICAgICAgICAgLSBh
bGx3aW5uZXIsc3VuOGktcjQwLXRocworICAgICAgICAgICAgICAtIGFsbHdpbm5lcixzdW41MGkt
YTY0LXRocworICAgICAgICAgICAgICAtIGFsbHdpbm5lcixzdW41MGktaDUtdGhzCisgICAgICAg
ICAgICAgIC0gYWxsd2lubmVyLHN1bjUwaS1oNi10aHMKKworICAgIHRoZW46CisgICAgICBwcm9w
ZXJ0aWVzOgorICAgICAgICByZXNldHM6CisgICAgICAgICAgbWluSXRlbXM6IDEKKyAgICAgICAg
ICBtYXhJdGVtczogMQorCisgIC0gaWY6CisgICAgICBwcm9wZXJ0aWVzOgorICAgICAgICBjb21w
YXRpYmxlOgorICAgICAgICAgIGNvbnRhaW5zOgorICAgICAgICAgICAgY29uc3Q6IGFsbHdpbm5l
cixzdW41MGktaDYtdGhzCisKKyAgICB0aGVuOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAg
Y2xvY2tzOgorICAgICAgICAgIG1pbkl0ZW1zOiAxCisgICAgICAgICAgbWF4SXRlbXM6IDEKKwor
ICAgICAgICBjbG9jay1uYW1lczoKKyAgICAgICAgICBtaW5JdGVtczogMQorICAgICAgICAgIG1h
eEl0ZW1zOiAxCisKKyAgICBlbHNlOgorICAgICAgaWY6CisgICAgICAgIHByb3BlcnRpZXM6Cisg
ICAgICAgICAgY29tcGF0aWJsZToKKyAgICAgICAgICAgIGNvbnRhaW5zOgorICAgICAgICAgICAg
ICBlbnVtOgorICAgICAgICAgICAgICAgIC0gYWxsd2lubmVyLHN1bjhpLWgzLXRocworICAgICAg
ICAgICAgICAgIC0gYWxsd2lubmVyLHN1bjhpLXI0MC10aHMKKyAgICAgICAgICAgICAgICAtIGFs
bHdpbm5lcixzdW41MGktYTY0LXRocworICAgICAgICAgICAgICAgIC0gYWxsd2lubmVyLHN1bjUw
aS1oNS10aHMKKworICAgICAgdGhlbjoKKyAgICAgICAgcHJvcGVydGllczoKKyAgICAgICAgICBj
bG9ja3M6CisgICAgICAgICAgICBtaW5JdGVtczogMgorICAgICAgICAgICAgbWF4SXRlbXM6IDIK
KworICAgICAgICAgIGNsb2NrLW5hbWVzOgorICAgICAgICAgICAgbWluSXRlbXM6IDIKKyAgICAg
ICAgICAgIG1heEl0ZW1zOiAyCisKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAg
IGNvbXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBjb25zdDogYWxs
d2lubmVyLHN1bjhpLWgzLXRocworCisgICAgdGhlbjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAg
ICAgICIjdGhlcm1hbC1zZW5zb3ItY2VsbHMiOgorICAgICAgICAgIGNvbnN0OiAwCisKKyAgICBl
bHNlOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgIiN0aGVybWFsLXNlbnNvci1jZWxscyI6
CisgICAgICAgICAgY29uc3Q6IDEKKworYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisKK2V4
YW1wbGVzOgorICAtIHwKKyAgICB0aHM6IHRoc0A1MDcwNDAwIHsKKyAgICAgICAgY29tcGF0aWJs
ZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXRocyI7CisgICAgICAgIHJlZyA9IDwweDA1MDcwNDAw
IDB4MTAwPjsKKyAgICAgICAgY2xvY2tzID0gPCZjY3UgODk+OworICAgICAgICBjbG9jay1uYW1l
cyA9ICJidXMiOworICAgICAgICByZXNldHMgPSA8JmNjdSAzNj47CisgICAgICAgIGludGVycnVw
dHMgPSA8MCAxNSA0PjsKKyAgICAgICAgbnZtZW0tY2VsbHMgPSA8JnRzZW5fY2FsaWI+OworICAg
ICAgICBudm1lbS1jZWxsLW5hbWVzID0gImNhbGlicmF0aW9uIjsKKyAgICAgICAgI3RoZXJtYWwt
c2Vuc29yLWNlbGxzID0gPDE+OworICAgIH07CisKKyAgICBzaWQ6IHNpZEAzMDA2MDAwIHsKKyAg
ICAgICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXNpZCI7CisgICAgICAgIHJl
ZyA9IDwweDAzMDA2MDAwIDB4NDAwPjsKKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cisg
ICAgICAgICNzaXplLWNlbGxzID0gPDE+OworICAgICAgICB0c2VuX2NhbGliOiBjYWxpYkAxNCB7
CisgICAgICAgICAgICAgICAgcmVnID0gPDB4MTQgNj47CisgICAgICAgIH07CisgICAgfTsKKy4u
LgotLSAKMi4xNy4xCgo=
--000000000000e697a30598690697
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--000000000000e697a30598690697--

