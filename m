Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8687DF70
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hbShw9lEeZDhlqTwqu6mqGo3UQ0t8+nNkJLksL8IaNk=; b=ehfpTRjUVaun7+0BkmptI+5QSi
	sJMDAZ6gGXgIpKcRucAfcySOfCraPTyRi/GJb0adRP8E4ndj9cN9JSTt9oB1EYnrnrxMEKTH976tY
	HGj1fpfkIpHQWZZiM4Ph6VJfEpAQhI4jeQ7lo7ZNWQe4tu8CM4Bqn8ZHHhthxg60BE2rqtm+7TLdB
	vp/zKfW/e4rksmMO5a9sTaqGrlA7PfZhI1XsTtB2SYAjfqQWQQYOm1LwyldY6nOA8btxIK66qkV8S
	rYsw50QyXotJMJ5TnZttKfCpIRBdH79/8r+lxKtLWYR8Jkrn3AJEx1Fh91Eoy24GgBlvJ35U5YBwI
	rTZR5RdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDLf-0006Ul-EN; Thu, 01 Aug 2019 15:50:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDLX-0006U9-BP
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:50:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so49058721wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 08:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=MdD3yVftBwNWkd7YK5mpx8hpnNaO44neO5nfkst92qA=;
 b=nTR0aPMcbDKv5QlZWvAmqmaRyIxcWeuPi5tVIgtY1YtjK5VNl4wwvtwdZqBvnJE3NX
 AC7s3L2HM4AMXaL4qbTRAkhdDNzpbOj/ufbcAbAN+ieycxTQF8U+SltTeQTIRYSewwrW
 Ux5YRDoeugjvk3dn7bgKhaou4N3Ka/DnX7Ne5wyxHdKWT96a9epVraOkS1NuTJeDOBhS
 NzxxWEwJns9NHtPbTfNues19ke7+bGj91zmAQ9xVcyoA1vunpJQghgZHhLiFsy58aYv9
 soFz4694czeiLZvOREbM1wA1WKqKD+jG5tg6XWP/+RVxtTIgmUSUk3Pmxju1QZp4c12d
 vIRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=MdD3yVftBwNWkd7YK5mpx8hpnNaO44neO5nfkst92qA=;
 b=N/Di0ob3SohTK1kkMi35Z4o0/U8YtLhwZeyAyAM3cfxEvd8FdVwSffNR8j5Vxg5Rlx
 pVGgOrQ1ajIYfT2tSewQaUTYJY716JiqwuSJoKEVWYzu+foesTGWF9FjbnvnUJV3izRC
 /NPREvfa5LFXUF49bf8ZKLhfx9sf05tB22T/0nGyUdIKweWoO9EFYEqPn/KhwlVFXSEU
 4/Ss5joIoxrGHcTKdN0NtEy5EH5rexgpsTxPT4MTJV3pSALX0yVlvqxw23WWIhnHOyc1
 75h/5Dh2B17xao2UUxtsjnO/omAgWIb7DQDV2YyRnDHD4QFWhf1eR49Xwv5AoM2Fr5AD
 EKGA==
X-Gm-Message-State: APjAAAVuHCgGe8y1mYxCPWB4fVEUnKaYfQD5BUR2O4HLwkYLzEbbUZfD
 1HGRbdMiiMQ76D1VzqLukGc=
X-Google-Smtp-Source: APXvYqwfes83IZco8VCmVHkM+VIu8RJ68J3JBXtZmqlQFPT28fxlRhF9j3I0aZfyzMoxrCr0UHJQsQ==
X-Received: by 2002:adf:f204:: with SMTP id p4mr22834294wro.317.1564674624623; 
 Thu, 01 Aug 2019 08:50:24 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id y12sm66278221wrm.79.2019.08.01.08.50.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 08:50:23 -0700 (PDT)
References: <20190731163330.32532-1-sebastien.szymanski@armadeus.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: =?utf-8?Q?S=C3=A9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH v3 2/3] media: imx7-media-csi: add i.MX6UL support
In-reply-to: <20190731163330.32532-1-sebastien.szymanski@armadeus.com>
Date: Thu, 01 Aug 2019 16:50:22 +0100
Message-ID: <m31ry4c2bl.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_085027_396167_2FCA0140 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2ViYXN0aWVuLApUaGFua3MgZm9yIHRoZSBwYXRjaC4KCk9uIFdlZCAzMSBKdWwgMjAxOSBh
dCAxNzozMywgU8OpYmFzdGllbiBTenltYW5za2kgd3JvdGU6Cj4gaS5NWDcgYW5kIGkuTVg2VUwv
TCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9sbGVyLiBTbyBhZGQgaS5NWDZVTC9MIHN1cHBvcnQK
PiB0byBpbXg3LW1lZGlhLWNzaSBkcml2ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVu
IFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+Cj4KCkxHVE0uIFRo
YW5rcyBmb3IgYWRkaW5nIHRoZSBzdXBwb3J0IHRvIHRoaXMgaW14NnVsL2wgc29jLgoKUmV2aWV3
ZWQtYnk6IFJ1aSBNaWd1ZWwgU2lsdmEgPHJtZnJmc0BnbWFpbC5jb20+CgotLS0KQ2hlZXJzLAoJ
UnVpCgo+IC0tLQo+Cj4gQ2hhbmdlcyBmb3IgdjM6Cj4gLSByZWJhc2Ugb24gTGludXggdjUuMy1y
YzIKPiAtIHJlbW92ZSBjc2lfc29jX2lkIHZhciBhcyBpdCdzIG5vdCBuZWVkZWQgYW55bW9yZSB0
aGFua3MgdG8gY29tbWl0Cj4gICBlMGM3NmE3ZDM0MjggKCJtZWRpYTogaW14Ny1tZWRpYS1jc2k6
IGdldCBjc2kgdXBzdHJlYW0gZW5kcG9pbnQiKQo+Cj4gQ2hhbmdlcyBmb3IgdjI6Cj4gIC0gcmVi
YXNlIG9uIHRvcCBvZiBsaW51eHR2L21hc3Rlcgo+ICAtIG1lbnRpb24gaS5NWDZVTC9MIGluIGhl
YWRlciBhbmQgS2NvbmZpZyBoZWxwIHRleHQKPiAgLSByZW5hbWUgY3NpX3R5cGUgdG8gY3NpX3Nv
Y19pZAo+Cj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZpZyAgICAgICAgICB8ICA0
ICstLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMgfCAzMCAr
KysrKysrKysrKysrKystLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygr
KSwgMTEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlh
L2lteC9LY29uZmlnIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4gaW5kZXgg
NGM3MjYzNDVkYzI1Li5mNTE0NzYyNDMwMTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2lteC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29u
ZmlnCj4gQEAgLTIyLDExICsyMiwxMSBAQCBjb25maWcgVklERU9fSU1YX0NTSQo+ICAJICBBIHZp
ZGVvNGxpbnV4IGNhbWVyYSBzZW5zb3IgaW50ZXJmYWNlIGRyaXZlciBmb3IgaS5NWDUvNi4KPgo+
ICBjb25maWcgVklERU9fSU1YN19DU0kKPiAtCXRyaXN0YXRlICJpLk1YNyBDYW1lcmEgU2Vuc29y
IEludGVyZmFjZSBkcml2ZXIiCj4gKwl0cmlzdGF0ZSAiaS5NWDZVTC9MIC8gaS5NWDcgQ2FtZXJh
IFNlbnNvciBJbnRlcmZhY2UgZHJpdmVyIgo+ICAJZGVwZW5kcyBvbiBWSURFT19JTVhfTUVESUEg
JiYgVklERU9fREVWICYmIEkyQwo+ICAJZGVmYXVsdCB5Cj4gIAloZWxwCj4gIAkgIEVuYWJsZSBz
dXBwb3J0IGZvciB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVyZmFjZSBkcml2ZXIgZm9y
Cj4gLQkgIGkuTVg3Lgo+ICsJICBpLk1YNlVML0wgb3IgaS5NWDcuCj4gIGVuZG1lbnUKPiAgZW5k
aWYKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNz
aS5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9pbXg3LW1lZGlhLWNzaS5jCj4gaW5kZXgg
NTAwYjRjMDhkOTY3Li40Y2E3OWZmNGM5YjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2lteC9pbXg3LW1lZGlhLWNzaS5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlh
L2lteC9pbXg3LW1lZGlhLWNzaS5jCj4gQEAgLTEsNiArMSw2IEBACj4gIC8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gIC8qCj4gLSAqIFY0TDIgQ2FwdHVyZSBDU0kgU3ViZGV2
IGZvciBGcmVlc2NhbGUgaS5NWDcgU09DCj4gKyAqIFY0TDIgQ2FwdHVyZSBDU0kgU3ViZGV2IGZv
ciBGcmVlc2NhbGUgaS5NWDZVTC9MIC8gaS5NWDcgU09DCj4gICAqCj4gICAqIENvcHlyaWdodCAo
YykgMjAxOSBMaW5hcm8gTHRkCj4gICAqCj4gQEAgLTc2NSw2ICs3NjUsNyBAQCBzdGF0aWMgaW50
IGlteDdfY3NpX2NvbmZpZ3VyZShzdHJ1Y3QgaW14N19jc2kgKmNzaSkKPiAgCXN0cnVjdCB2NGwy
X3BpeF9mb3JtYXQgKm91dF9waXggPSAmdmRldi0+Zm10LmZtdC5waXg7Cj4gIAlfX3UzMiBpbl9j
b2RlID0gY3NpLT5mb3JtYXRfbWJ1c1tJTVg3X0NTSV9QQURfU0lOS10uY29kZTsKPiAgCXUzMiBj
cjEsIGNyMTg7Cj4gKwlpbnQgd2lkdGggPSBvdXRfcGl4LT53aWR0aDsKPgo+ICAJaWYgKG91dF9w
aXgtPmZpZWxkID09IFY0TDJfRklFTERfSU5URVJMQUNFRCkgewo+ICAJCWlteDdfY3NpX2RlaW50
ZXJsYWNlX2VuYWJsZShjc2ksIHRydWUpOwo+IEBAIC03NzQsMTUgKzc3NSwyNyBAQCBzdGF0aWMg
aW50IGlteDdfY3NpX2NvbmZpZ3VyZShzdHJ1Y3QgaW14N19jc2kgKmNzaSkKPiAgCQlpbXg3X2Nz
aV9idWZfc3RyaWRlX3NldChjc2ksIDApOwo+ICAJfQo+Cj4gLQlpbXg3X2NzaV9zZXRfaW1hZ3Bh
cmEoY3NpLCBvdXRfcGl4LT53aWR0aCwgb3V0X3BpeC0+aGVpZ2h0KTsKPiArCWNyMTggPSBpbXg3
X2NzaV9yZWdfcmVhZChjc2ksIENTSV9DU0lDUjE4KTsKPiArCj4gKwlpZiAoIWNzaS0+aXNfY3Np
Mikgewo+ICsJCWlmIChvdXRfcGl4LT5waXhlbGZvcm1hdCA9PSBWNEwyX1BJWF9GTVRfVVlWWSB8
fAo+ICsJCSAgICBvdXRfcGl4LT5waXhlbGZvcm1hdCA9PSBWNEwyX1BJWF9GTVRfWVVZVikKPiAr
CQkJd2lkdGggKj0gMjsKPiArCj4gKwkJaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwgd2lkdGgs
IG91dF9waXgtPmhlaWdodCk7Cj4gKwo+ICsJCWNyMTggfD0gKEJJVF9CQVNFQUREUl9TV0lUQ0hf
RU4gfCBCSVRfQkFTRUFERFJfU1dJVENIX1NFTCB8Cj4gKwkJCUJJVF9CQVNFQUREUl9DSEdfRVJS
X0VOKTsKPiArCQlpbXg3X2NzaV9yZWdfd3JpdGUoY3NpLCBjcjE4LCBDU0lfQ1NJQ1IxOCk7Cj4K
PiAtCWlmICghY3NpLT5pc19jc2kyKQo+ICAJCXJldHVybiAwOwo+ICsJfQo+ICsKPiArCWlteDdf
Y3NpX3NldF9pbWFncGFyYShjc2ksIHdpZHRoLCBvdXRfcGl4LT5oZWlnaHQpOwo+Cj4gIAljcjEg
PSBpbXg3X2NzaV9yZWdfcmVhZChjc2ksIENTSV9DU0lDUjEpOwo+ICAJY3IxICY9IH5CSVRfR0NM
S19NT0RFOwo+Cj4gLQljcjE4ID0gaW14N19jc2lfcmVnX3JlYWQoY3NpLCBDU0lfQ1NJQ1IxOCk7
Cj4gIAljcjE4ICY9IEJJVF9NSVBJX0RBVEFfRk9STUFUX01BU0s7Cj4gIAljcjE4IHw9IEJJVF9E
QVRBX0ZST01fTUlQSTsKPgo+IEBAIC04MTcsMTEgKzgzMCw5IEBAIHN0YXRpYyB2b2lkIGlteDdf
Y3NpX2VuYWJsZShzdHJ1Y3QgaW14N19jc2kgKmNzaSkKPiAgewo+ICAJaW14N19jc2lfc3dfcmVz
ZXQoY3NpKTsKPgo+IC0JaWYgKGNzaS0+aXNfY3NpMikgewo+IC0JCWlteDdfY3NpX2RtYXJlcV9y
ZmZfZW5hYmxlKGNzaSk7Cj4gLQkJaW14N19jc2lfaHdfZW5hYmxlX2lycShjc2kpOwo+IC0JCWlt
eDdfY3NpX2h3X2VuYWJsZShjc2kpOwo+IC0JfQo+ICsJaW14N19jc2lfZG1hcmVxX3JmZl9lbmFi
bGUoY3NpKTsKPiArCWlteDdfY3NpX2h3X2VuYWJsZV9pcnEoY3NpKTsKPiArCWlteDdfY3NpX2h3
X2VuYWJsZShjc2kpOwo+ICB9Cj4KPiAgc3RhdGljIHZvaWQgaW14N19jc2lfZGlzYWJsZShzdHJ1
Y3QgaW14N19jc2kgKmNzaSkKPiBAQCAtMTMwMiw2ICsxMzEzLDcgQEAgc3RhdGljIGludCBpbXg3
X2NzaV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPgo+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IG9mX2RldmljZV9pZCBpbXg3X2NzaV9vZl9tYXRjaFtdID0gewo+ICAJeyAuY29t
cGF0aWJsZSA9ICJmc2wsaW14Ny1jc2kiIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg2
dWwtY3NpIiB9LAo+ICAJeyB9LAo+ICB9Owo+ICBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBpbXg3
X2NzaV9vZl9tYXRjaCk7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
