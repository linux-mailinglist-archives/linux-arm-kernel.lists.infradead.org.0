Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5546B787F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 11:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSni4rZFKPUaXAhm/t2UlaJSJ06rA+exu76+0cbATOI=; b=t0xU9vOxPS4oUy
	gY3Shj/nqdY6yz97oQR2OezU0q6LqrXZ6sD1TeRKju71q0O/m13gnvX1OJr2eEeUBqY2tgTBOSVfk
	aJQW8qyyfCY7n7/+Ij/tjsG7WBbwGs35CiJLeaMaEuJ2o3/R38tQn/QU+TmUyZRc90UfohQV6tekw
	2lb48a5DmUJ5zUgSDZXa2rFs1PLnxVgcnFP10wBw7OL3SumBfpzP+/B/jehndGF0dlZmsL6FNcFdE
	2K5AGtU8YKFR+xbqxoVc6v1NcbUv7dFmeW7b4oY05YLmkjYOwBnt74y9rO9uAOuhWa56CniR1paso
	97C3kqljilwnPR6R76ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1Zk-00044i-Ao; Mon, 29 Jul 2019 09:04:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1ZW-00044A-69
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 09:03:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so61024485wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 02:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7y+B0NsHK08ns87YYWWmTZg44ekWnBl+gyEZRdNH7dk=;
 b=Q3NGlBhYcmY7gU7pa16M4xiyd4vGtiytI6d390UxmvVqpbpPMRQrlvlHUz0UP8G+os
 BCn59Q5YiDmTmmJUy0RRvJWMcQj9ENlFM5DJahpwI6dWPxbZ+gKMN2FgHQp01b4uHr3X
 lFwKQ9aBY+LCEihdfxwmsiC3o0xRn0WlcEgSOkC/XCwR++CHeME1MRbLGMifhwVfZyIB
 tPT7vERlOK82OnoEPIKs4H43XD7k1KcIH3XBSeclCTmaUAtnRIWZOuQZa38li4tMj2w8
 6Bo77DH/eulrOOkNA8Ofw8gHuPCuFOz8b7Ec6YZY4DlGcMOxX5v94wRhWa9RsG80Xgrr
 dImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7y+B0NsHK08ns87YYWWmTZg44ekWnBl+gyEZRdNH7dk=;
 b=SNyr6gJgH24fgvWso/nii8zbBIsUecps5h6W2uzPUXV3PPWDf7WxnWDC3Z1xyofijs
 0YHJQa3Gp8j0VF8/YfHnO/RkYT5refgJOkXdCPDIUet6nnz7MbuRy9WBHavwDkvU6OEi
 tMptJ6xbNx3Yp3uVZyfGNL3iI5qHlJ7DYYl38cUF5DH8gi3vrb9SJlMDpwjnPpCe7iyD
 S5/7c4VWnRjpdO5WYwEq+lUPMA8CBGW0aSzLzYmNpaurbYWnnWWBdaez8HZ+nBcp4Ok6
 u8szlK4sXBWUGTVSadGMXQDb1S18kRSlo8oJO7+76KwjMgVpjUPp5b2JJV/CCpfYemzb
 ct5g==
X-Gm-Message-State: APjAAAXePWz7NJRp3ngEUlpuZI78vQ/gvO0Gtu3VfWTI4ordKbCMn55f
 amSX2Qtg0bxqoWT4KuJVm6KWQ6BnfGkfnOhG1Ec=
X-Google-Smtp-Source: APXvYqxr49mqHWNHmDv+kvjF41anGCxPRTZve8h+rl+VxZ+94QVxFkj3HV+j0emyuMOH5LeC2mJrrnrQpEI4SlZ0SLc=
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr45325987wrx.196.1564391036430; 
 Mon, 29 Jul 2019 02:03:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190728141218.12702-1-daniel.baluta@nxp.com>
 <20190729083130.GA3904@bogon.m.sigxcpu.org>
In-Reply-To: <20190729083130.GA3904@bogon.m.sigxcpu.org>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 29 Jul 2019 12:03:45 +0300
Message-ID: <CAEnQRZDwAQZ7E=ayJeZCvXJ8fyayCmpAqe9=oLm4gxw8zoN0oQ@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Init rates and parents configs for
 clocks
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_020358_230438_F4638AEC 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>, baruch@tkos.co.il,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMTE6MzIgQU0gR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4
Y3B1Lm9yZz4gd3JvdGU6Cj4KPiBIaSwKPiBPbiBTdW4sIEp1bCAyOCwgMjAxOSBhdCAwNToxMjox
OFBNICswMzAwLCBEYW5pZWwgQmFsdXRhIHdyb3RlOgo+ID4gRnJvbTogQWJlbCBWZXNhIDxhYmVs
LnZlc2FAbnhwLmNvbT4KPiA+Cj4gPiBBZGQgdGhlIGluaXRpYWwgY29uZmlndXJhdGlvbiBmb3Ig
Y2xvY2tzIHRoYXQgbmVlZCBkZWZhdWx0IHBhcmVudCBhbmQgcmF0ZQo+ID4gc2V0dGluZy4gVGhp
cyBpcyBiYXNlZCBvbiB0aGUgdmVuZG9yIHRyZWUgY2xvY2sgcHJvdmlkZXIgcGFyZW50cyBhbmQg
cmF0ZXMKPiA+IGNvbmZpZ3VyYXRpb24gZXhjZXB0IHRoaXMgaXMgZG9pbmcgdGhlIHNldHVwIGlu
IGR0cyByYXRoZXIgdGhlbiB1c2luZyBjbG9jawo+ID4gY29uc3VtZXIgQVBJIGluIGEgY2xvY2sg
cHJvdmlkZXIgZHJpdmVyLgo+ID4KPiA+IE5vdGUgdGhhdCBieSBhZGRpbmcgdGhlIGluaXRpYWwg
cmF0ZSBzZXR0aW5nIGZvciBhdWRpb19wbGwxL2F1ZGlvX3BsbAo+ID4gc2V0dGluZyB3ZSBuZWVk
IHRvIHJlbW92ZSBpdCBmcm9tIGlteDhtcS1saWJyZW01LWRldmtpdC5kdHMKPiA+IGlteDhtcS1s
aWJyZW01LWRldmtpdC5kdHMKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBYmVsIFZlc2EgPGFiZWwu
dmVzYUBueHAuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJh
bHV0YUBueHAuY29tPgo+ID4gLS0tCj4gPiBDaGFuZ2VzIHNpbmNlIHYyOgo+ID4gICAgICAgLSBz
ZXQgcmF0ZSBmb3IgYXVkaW9fcGxsMS9hdWRpb19wbGwyICBpbiB0aGUgZHRzaSBmaWxlIGFuZAo+
ID4gICAgICAgcmVtb3ZlIHRoZSBzZXR0aW5nIGZyb20gaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0
cwo+ID4KPiA+ICAuLi4vZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzICAg
fCAgNSAtLS0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNp
ICAgICB8IDIxICsrKysrKysrKysrKysrKysrKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIxIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzCj4gPiBpbmRl
eCA2ODNhMTEwMzU2NDMuLmM3MDJjY2M4Mjg2NyAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMKPiA+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMKPiA+
IEBAIC0xNjksMTEgKzE2OSw2IEBACj4gPiAgICAgICB9Owo+ID4gIH07Cj4gPgo+ID4gLSZjbGsg
ewo+ID4gLSAgICAgYXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1RX0FVRElPX1BMTDE+LCA8
JmNsayBJTVg4TVFfQVVESU9fUExMMj47Cj4gPiAtICAgICBhc3NpZ25lZC1jbG9jay1yYXRlcyA9
IDw3ODY0MzIwMDA+LCA8NzIyNTM0NDAwPjsKPiA+IC19Owo+ID4gLQo+ID4gICZkcGh5IHsKPiA+
ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ICB9Owo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1xLmR0c2kKPiA+IGluZGV4IDAyZmJkMDYyNTMxOC4uYzY3NjI1YTg4MWE0
IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0
c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4g
PiBAQCAtNDk0LDYgKzQ5NCwyNyBAQAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y2xvY2stbmFtZXMgPSAiY2tpbCIsICJvc2NfMjVtIiwgIm9zY18yN20iLAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY2xrX2V4dDEiLCAiY2xrX2V4dDIi
LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY2xrX2V4
dDMiLCAiY2xrX2V4dDQiOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYXNzaWdu
ZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1RX1ZJREVPX1BMTDE+LAo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfQVVESU9fUExMMT4sCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY2xrIElNWDhNUV9BVURJT19QTEwy
PiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1R
X0NMS19BSEI+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNs
ayBJTVg4TVFfQ0xLX05BTkRfVVNESENfQlVTPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1RX0NMS19BVURJT19BSEI+LAo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfVklERU9fUExMMV9SRUZf
U0VMPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjbGsgSU1Y
OE1RX0NMS19OT0M+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYXNzaWduZWQt
Y2xvY2stcGFyZW50cyA9IDwwPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8MD4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPDA+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwmY2xrIElNWDhNUV9TWVMxX1BMTF8xMzNNPiwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfU1lTMV9QTExfMjY2
TT4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZj
bGsgSU1YOE1RX1NZUzJfUExMXzUwME0+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDwmY2xrIElNWDhNUV9DTEtfMjdNPiwKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfU1lTMV9QTExf
ODAwTT47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhc3NpZ25lZC1jbG9jay1y
YXRlcyA9IDw1OTM5OTk5OTk+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDw3ODY0MzIwMDA+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDw3MjI1MzQ0MDA+Owo+ID4gKwo+ID4gKwo+ID4gICAgICAgICAg
ICAgICAgICAgICAgIH07Cj4gPgo+ID4gICAgICAgICAgICAgICAgICAgICAgIHNyYzogcmVzZXQt
Y29udHJvbGxlckAzMDM5MDAwMCB7Cj4KPiB0b2dldGhlIHdpdGggaHR0cDovL2NvZGUuYnVsaXgu
b3JnL3BkODhqcC04MTIzODE/cmF3IHRlc3RlZCBvbgo+IGxpbnV4LTIwMTkwNzI1IChwbHVzIG1p
cGkgZHNpKToKPgo+IFRlc3RlZC1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4K
ClRoYW5rcyBmb3IgdGVzdGluZyB0aGlzIEd1aWRvLiBDYW4geW91IHBsZWFzZSBhZGQgeW91ciBU
ZXN0ZWQtYnkKdG8gbXkgZm91cnRoIHZlcnNpb24gb2YgdGhlIHBhdGNoLgoKW1BBVENIIHY0XSBh
cm02NDogZHRzOiBpbXg4bXE6IEluaXQgcmF0ZXMgYW5kIHBhcmVudHMgY29uZmlncyBmb3IgY2xv
Y2tzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
