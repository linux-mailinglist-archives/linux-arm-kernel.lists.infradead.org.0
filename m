Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3403A5866
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wjIhiXWnkJsfogQa+Rhxq+F/XXtzJkSxGeV7D93oL8=; b=L8vbNYVhl3ZQKH
	MujBO2t5k+eKLfeB/fWy+81JVQis1LFiLYihnkbuLpm0ibV5wIdRIcNnYSTX/NK91yImbloDaofAH
	GVMiHHaM4y4au+N2XSUvNd4VSlF7pSvpn78K8OIdmxUosINfCgHZ0Lxmc7mpBN1KPJXPSV3O1FLf8
	EQ6X08PgkmyDb73IX7C3IU8b//02LNH+Huo5NwDoWlAi2aDE/Oai76oIxF8yJcBA881Dq8a8TMl9V
	rqA5haGWUq3+OWFw+YNuzA6MH8PfNM5uzIGw3dNeaH8xY8NTPZHnpuNyOhV3aOEe8b038uV9oA+t9
	AbWnILvG9SH0iqrGH76Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mk8-0002bH-5T; Mon, 02 Sep 2019 13:51:40 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mjx-0002aa-5T
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:51:31 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 4FE5EFF80E;
 Mon,  2 Sep 2019 13:51:14 +0000 (UTC)
Date: Mon, 2 Sep 2019 15:51:13 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: sound: Add Xilinx logicPD-I2S FPGA IP
 bindings
Message-ID: <20190902155113.40b00fa0@xps13>
In-Reply-To: <20190902044231.GA17348@bogus>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
 <20190830210607.22644-2-miquel.raynal@bootlin.com>
 <20190902044231.GA17348@bogus>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_065129_510112_EBE2297A 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 alexandre@bootlin.com, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jaroslav Kysela <perex@perex.cz>, Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LCBvbmUgcXVlc3Rpb24gYmVsb3cuCgpSb2Ig
SGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZSBvbiBNb24sIDAyIFNlcCAyMDE5IDE0OjM5
OjA5ICswMTAwOgoKPiBPbiBGcmksIEF1ZyAzMCwgMjAxOSBhdCAxMTowNjowNlBNICswMjAwLCBN
aXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gRG9jdW1lbnQgdGhlIGxvZ2ljUEQgSTJTIEZQR0EgYmxv
Y2sgYmluZGluZ3MgaW4geWFtbC4KPiA+IAo+ID4gU3ludGF4IHZlcmlmaWVkIHdpdGggZHQtZG9j
LXZhbGlkYXRlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL3NvdW5kL3hsbngs
bG9naWNwZC1pMnMueWFtbCAgICAgIHwgNTcgKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC94bG54LGxvZ2ljcGQtaTJzLnlhbWwK
PiA+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
b3VuZC94bG54LGxvZ2ljcGQtaTJzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvc291bmQveGxueCxsb2dpY3BkLWkycy55YW1sCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5jYmZmNjQxYWYxOTkKPiA+IC0tLSAvZGV2L251bGwK
PiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC94bG54LGxv
Z2ljcGQtaTJzLnlhbWwKPiA+IEBAIC0wLDAgKzEsNTcgQEAKPiA+ICsjIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4gPiArJVlBTUwgMS4yCj4gPiAr
LS0tCj4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9zb3VuZC94bG54LGxv
Z2ljcGQtaTJzLnlhbWwjCj4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEt
c2NoZW1hcy9jb3JlLnlhbWwjCj4gPiArCj4gPiArdGl0bGU6IERldmljZS1UcmVlIGJpbmRpbmdz
IGZvciBYaWxpbnggbG9naWNQRCBJMlMgRlBHQSBibG9jawo+ID4gKwo+ID4gK21haW50YWluZXJz
Ogo+ID4gKyAgLSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+ID4g
Kwo+ID4gK2Rlc2NyaXB0aW9uOiB8Cj4gPiArICBUaGUgSVAgc3VwcG9ydHMgSTJTIHBsYXliYWNr
L2NhcHR1cmUgYXVkaW8uIEl0IGFjdHMgYXMgYSBzbGF2ZSBhbmQKPiA+ICsgIGNsb2NrcyBzaG91
bGQgY29tZSBmcm9tIHRoZSBjb2RlYy4gSXQgb25seSBzdXBwb3J0cyB0d28gY2hhbm5lbHMgYW5k
Cj4gPiArICBTMTZfTEUgZm9ybWF0Lgo+ID4gKwo+ID4gK3Byb3BlcnRpZXM6Cj4gPiArICBjb21w
YXRpYmxlOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNvbnN0OiB4bG54LGxvZ2ljcGQt
aTJzCj4gPiArCj4gPiArICByZWc6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArICAgIGRlc2Ny
aXB0aW9uOgo+ID4gKyAgICAgIEJhc2UgYWRkcmVzcyBhbmQgc2l6ZSBvZiB0aGUgSVAgY29yZSBp
bnN0YW5jZS4KPiA+ICsKPiA+ICsgIGludGVycnVwdHM6Cj4gPiArICAgIG1pbkl0ZW1zOiAxCj4g
PiArICAgIG1heEl0ZW1zOiAyCj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gZGVzY3JpcHRp
b246IHR4IGludGVycnVwdAo+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IHJ4IGludGVycnVwdAo+
ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsgICAgICBFaXRoZXIgdGhlIFR4IGludGVycnVwdGlv
biBvciB0aGUgUnggaW50ZXJydXB0aW9uIG9yIGJvdGguICAKPiAKPiBUaGUgc2NoZW1hIHNheXMg
ZWl0aGVyIHR4IG9yIGJvdGguIERvZXNuJ3QgcmVhbGx5IG1hdHRlciBoZXJlIGFzIGl0J3MgCj4g
anVzdCBudW1iZXJzLgoKSSBzZWUgLCBJJ2xsIGRyb3AgdGhlICdpdGVtcycgZW50cnkuCgo+IAo+
ID4gKwo+ID4gKyAgaW50ZXJydXB0LW5hbWVzOgo+ID4gKyAgICBtaW5JdGVtczogMQo+ID4gKyAg
ICBtYXhJdGVtczogMgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNvbnN0OiB0eAo+ID4g
KyAgICAgIC0gY29uc3Q6IHJ4ICAKPiAKPiBCdXQgaGVyZSBpdCBkb2VzIG1hdHRlci4KPiAKPiBU
aGUgZWFzaWVzdCB3YXkgdG8gZXhwcmVzcyB0aGlzIGlzOgo+IAo+IG9uZU9mOgo+ICAgLSBpdGVt
czoKPiAgICAgICAtIGVudW06IFsgdHgsIHJ4IF0KPiAgIC0gaXRlbXM6Cj4gICAgICAgLSBjb25z
dDogdHgKPiAgICAgICAtIGNvbnN0OiByeAo+IAoKRG9lcyB0aGlzIGVuZm9yY2UgYW4gb3JkZXI/
IChJIGRvbid0IGtub3cgaWYgaXQgbWF0dGVycywgdGhvdWdoLCBidXQgaW4KdGhlIGJlbGxvdyBl
eGFtcGxlIEkgcHV0IHRoZSBSeCBpbnRlcnJ1cHQgZmlyc3QpLgoKPiA+ICsKPiA+ICtyZXF1aXJl
ZDoKPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gKyAgLSByZWcKPiA+ICsgIC0gaW50ZXJydXB0cwo+
ID4gKyAgLSBpbnRlcnJ1cHRzLWNvbnRyb2xsZXIKPiA+ICsKPiA+ICtleGFtcGxlczoKPiA+ICsg
IC0gfAo+ID4gKyAgICBsb2dpaTJzX2RhaTogbG9naWkycy1kYWlANDNjMTAwMDAgewo+ID4gKyAg
ICAgICAgcmVnID0gPDB4NDNjMTAwMDAgMHgxMDAwPjsKPiA+ICsgICAgICAgIGNvbXBhdGlibGUg
PSAieGxueCxsb2dpY3BkLWkycy1kYWkiOwo+ID4gKyAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9
IDwmaW50Yz47Cj4gPiArICAgICAgICBpbnRlcnJ1cHRzID0gPDAgMjkgSVJRX1RZUEVfTEVWRUxf
SElHSD4sIDwwIDMwIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ID4gKyAgICAgICAgaW50ZXJydXB0
LW5hbWVzID0gInJ4IiwgInR4IjsKPiA+ICsgICAgfTsKPiA+IC0tIAo+ID4gMi4yMC4xCj4gPiAg
IAo+IAoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
