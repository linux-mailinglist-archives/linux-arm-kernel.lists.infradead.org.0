Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4509C750F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4Q06GyYAVZ8hP50JXkcSGNHd7dm/kdrwFcJpRbM9z8=; b=ekbvcbBPTvqfIl
	IIY7azmF/Al/skYozIMHgudGEbWBedyDwKCNEITXiKAQawcNAh2SkzlD9r6Q/sPZRJTi0crBs3D+i
	aYd7DdRzLHJQd/7/z9pu/XMZoAopPXh87NC51YKLAnbksfWy3/W6KGB0eewdvlzGsa4gIjLyiFUYy
	PdQRQEwpL8KETfz0TciOIQFUa+81zeXe0VUpntIkvNhxdDvG0RoApHBQv5Dh301m3iQYRqKaS7F1Z
	U5UJMacNOV7tkY6wgTuPgSbIBw9jEUdRpwlKsqXL5KyUgXDN6OyXNSGvdVu4TfEYh+8vZuBETS5h+
	iUkY/zqrPzpXHs+XaHIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqefk-0002X8-4M; Thu, 25 Jul 2019 14:24:44 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqefP-0002WZ-6H
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:24:24 +0000
Received: by mail-lj1-x242.google.com with SMTP id t28so48192285lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=QHpELRpBKO7EZIccXTfwOcj2Dzu6DQ0ve/foH0WRfeg=;
 b=T3qvU+3Tb5TRK8AacfmISB0gOegIgKcyPLouaLtrAcRljhhQMWsVclxH8Ye/OGwc1y
 FW2YGzEKdD4l66HhGY+YdLSQ8X+oqdu58DZ69ACt00NnHHlINMTc6fl2V135qEGPmGK5
 0uFE1bOa4AGnDAAWD6z8Ffenp1fj4Ck9Ms5v3Octgp9x60b92ZroNI4RtI8FGyFwSM1F
 UjlHmmCXXM5VscLwiEqZOxVTZkOyFuvgGmsOVHbeKx67sl7V3ZsaN9+VXQ+u1J3k7fwN
 byklpgBBHHGjF74sTRKkgdpbOHNcsAgdwuwXRNJxxunkYoh6YblJ8RQ9E+jxzygshf5U
 4LwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=QHpELRpBKO7EZIccXTfwOcj2Dzu6DQ0ve/foH0WRfeg=;
 b=YRNK6rmXpIGUZbYhSNsmTPm3KeAwh3ENeH8gkOFf72+i1DkEPgOsrANHQE2M/FyEGO
 0klufnO8zKGXq51X6DUVSBNTp9k9m/lehVCMyZC/dYd6AF5t/t1gTuRxQrzdOlbQoTbU
 tCuUHQrv6iYvwbpuqhSMTzj6MLgkZiNucjAtWmAu2aZa5YDfJknruAPtcZPFFc9DCAY3
 r7Td30sL2MnGI3nFdGGvLAIZiWyjJn937UWQ4jzFjp08i/5pH8ikTyYhpNX1wzR6teSV
 OeO/1Kk7UOsWE3AEdMKrHfH12nYaQfjAdHAW0b9yVG1GDquDTwewwTICQ2J0bfhTK1ZN
 ysEw==
X-Gm-Message-State: APjAAAU41slouYT8feAo4wgf/WpsDi0B50n8R8tWBxvSh4kbakZjusnR
 l8Oaar6G4uxmgJjGNlOWskiLqs4xpPgHcsBUz80=
X-Google-Smtp-Source: APXvYqwEmzwuMqkOxr0aEHUwLmVQUEfqpgOv3BdVEQRWVSDRdsMreLUPZUh2LA5quQUjw8nMqzF9mEmTZ8nQFxNF6Pc=
X-Received: by 2002:a2e:3008:: with SMTP id w8mr47159184ljw.13.1564064661345; 
 Thu, 25 Jul 2019 07:24:21 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563971855.git.leonard.crestez@nxp.com>
 <93df6e7d81a404a43af684e2f96bdb6561ed87fe.1563971855.git.leonard.crestez@nxp.com>
In-Reply-To: <93df6e7d81a404a43af684e2f96bdb6561ed87fe.1563971855.git.leonard.crestez@nxp.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
Date: Thu, 25 Jul 2019 23:23:44 +0900
Message-ID: <CAGTfZH2UzvOVE-hKHLLGa7-ZF6DqsXvZiHcMy4O9qpohYLGbDA@mail.gmail.com>
Subject: Re: [RFCv3 1/3] dt-bindings: devfreq: Add initial bindings for i.MX
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_072423_234582_A0B9ECFA 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (cwchoi00[at]gmail.com)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (cwchoi00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cwchoi00[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: cwchoi00@gmail.com
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Frank Li <Frank.li@nxp.com>,
 Alexandre Bailon <abailon@baylibre.com>, Fabio Estevam <festevam@gmail.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Will Deacon <will@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgoyMDE564WEIDfsm5QgMjTsnbwgKOyImCkg7Jik7ZuEIDEwOjM2LCBMZW9uYXJkIENyZXN0
ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPuuLmOydtCDsnpHshLE6Cj4KPiBBZGQgaW5pdGlh
bCBkdCBiaW5kaW5ncyBmb3IgdGhlIGludGVyY29ubmVjdHMgaW5zaWRlIGkuTVggY2hpcHMuCj4g
TXVsdGlwbGUgZXh0ZXJuYWwgSVBzIGFyZSBpbnZvbHZlZCBidXQgU09DIGludGVncmF0aW9uIG1l
YW5zIHRoZQo+IHNvZnR3YXJlIGNvbnRyb2xsYWJsZSBpbnRlcmZhY2VzIGFyZSB2ZXJ5IHNpbWls
YXIuCj4KPiBUaGlzIGlzIGluaXRpYWxseSBvbmx5IGZvciBpbXg4bW0gYnV0IGFkZCBhbiAiZnNs
LGlteC1idXMiIGZhbGxiYWNrCj4gc2ltaWxhciB0byBleHlub3MtYnVzLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPiAtLS0KPiAg
Li4uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9pbXgueWFtbCAgICAgIHwgNTkgKysrKysr
KysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEv
aW14LnlhbWwKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGV2ZnJlcS9pbXgueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
ZXZmcmVxL2lteC55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAw
MDAuLjg3ZjkwY2RkZmQyOQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9pbXgueWFtbAo+IEBAIC0wLDAgKzEsNTkgQEAKPiAr
IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICslWUFNTCAxLjIKPiArLS0tCj4g
KyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZGV2ZnJlcS9pbXgueWFtbCMKPiAr
JHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4g
Kwo+ICt0aXRsZTogR2VuZXJpYyBpLk1YIGJ1cyBmcmVxdWVuY3kgZGV2aWNlCj4gKwo+ICttYWlu
dGFpbmVyczoKPiArICAtIExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+
Cj4gKwo+ICtkZXNjcmlwdGlvbjogfAo+ICsgIFRoZSBpLk1YIFNvQyBmYW1pbHkgaGFzIG11bHRp
cGxlIGJ1c2VzIGZvciB3aGljaCBjbG9jayBmcmVxdWVuY3kgKGFuZCBzb21ldGltZXMKPiArICB2
b2x0YWdlKSBjYW4gYmUgYWRqdXN0ZWQuCj4gKwo+ICsgIFNvbWUgb2YgdGhvc2UgYnVzZXMgZXhw
b3NlIHJlZ2lzdGVyIGFyZWFzIG1lbnRpb25lZCBpbiB0aGUgbWVtb3J5IG1hcHMgYXMgR1BWCj4g
KyAgKCJHbG9iYWwgUHJvZ3JhbW1lcnMgVmlldyIpIGJ1dCBub3QgYWxsLiBBY2Nlc3MgdG8gdGhp
cyBhcmVhIG1pZ2h0IGJlIGRlbmllZCBmb3IKPiArICBub3JtYWwgd29ybGQuCj4gKwo+ICsgIFRo
ZSBidXNlcyBhcmUgYmFzZWQgb24gZXh0ZXJuYWxseSBsaWNlbnNlZCBJUHMgc3VjaCBhcyBBUk0g
TklDLTMwMSBhbmQgQXJ0ZXJpcwo+ICsgIEZsZXhOT0MgYnV0IERUIGJpbmRpbmdzIGFyZSBzcGVj
aWZpYyB0byB0aGUgaW50ZWdyYXRpb24gb2YgdGhlc2UgYnVzCj4gKyAgaW50ZXJjb25uZWN0IElQ
cyBpbnRvIGlteCBTT0NzLgo+ICsKPiArcHJvcGVydGllczoKPiArICByZWc6Cj4gKyAgICBtYXhJ
dGVtczogMQo+ICsgICAgZGVzY3JpcHRpb246IEdQViBhcmVhCj4gKwo+ICsgIGNvbXBhdGlibGU6
Cj4gKyAgICBjb250YWluczoKPiArICAgICAgZW51bToKPiArICAgICAgIC0gZnNsLGlteDhtLW5v
Ywo+ICsgICAgICAgLSBmc2wsaW14OG0tbmljCj4gKyAgICAgICAtIGZzbCxpbXg4bS1kZHJjCj4g
Kwo+ICsgIGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICtyZXF1aXJlZDoKPiArICAt
IGNvbXBhdGlibGUKPiArICAtIGNsb2Nrcwo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAg
ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svaW14OG1tLWNsb2NrLmg+Cj4gKyAgICBkZHJj
OiBkcmFtLWNvbnRyb2xsZXJAM2Q0MDAwMDAgewo+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0g
ImZzbCxpbXg4bW0tZGRyYyI7CgpzL2lteDhtbS9pbXg4bQoKPiArICAgICAgICAgICAgcmVnID0g
PDB4M2Q0MDAwMDAgMHg0MDAwMDA+Owo+ICsgICAgICAgICAgICBjbG9ja3MgPSA8JmNsayBJTVg4
TU1fQ0xLX0RSQU0+Owo+ICsgICAgICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZkZHJj
X29wcF90YWJsZT47Cj4gKyAgICB9Owo+ICsKPiArICAtIHwKPiArICAgIG5vYzogbm9jQDMyNzAw
MDAwIHsKPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14OG1tLW5vYyI7CgpzL2lt
eDhtbS9pbXg4bQoKPiArICAgICAgICAgICAgcmVnID0gPDB4MzI3MDAwMDAgMHgxMDAwMDA+Owo+
ICsgICAgICAgICAgICBjbG9ja3MgPSA8JmNsayBJTVg4TU1fQ0xLX05PQz47Cj4gKyAgICAgICAg
ICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8Jm5vY19vcHBfdGFibGU+Owo+ICsgICAgfTsKPiAt
LQo+IDIuMTcuMQo+CgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
