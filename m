Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69AC1B32E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 01:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0d473dxQeuUqxcw+PD75D5j8fnVW7R3lgE8UuInxNeo=; b=ozM12PJntGMgF1
	j1Fq3iY2/kVTB3748gUJnV3AKdTZ8+yBUyoJYKyxlKeLtlq3A+AIs8sVZ6QuvBNw4U+a78c0sxfPi
	AkU3azudb98vT83kmpYBxaQMzSsJs8XRy2ZnrQUbllcbOS3sPesBVrQh3TJ4LGSGgsakAJqM1ZM1n
	xNHtDonwuMNU7LkbeQ/nfcE1nJuok5JiGKMg0VXi2s8lkIsyjsyH/H3NT9gkw/63HiTkLq1P6fATp
	vwDvWkqaYe0UNLd088rODM+9/T6JGHRyFCp8opIVOs9uAk7v1eMo0ZL0Y2eNagD01e0mX30nPONps
	XkU7wN5d6F7Ej2M2vRgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR1tq-0004Ni-IN; Tue, 21 Apr 2020 23:01:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR1td-0004Mj-UO; Tue, 21 Apr 2020 23:01:43 +0000
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9644E2074B;
 Tue, 21 Apr 2020 23:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587510100;
 bh=OzM3PC6Eo/10PD5ApVmiinYzSR9WtgVpy63OgR+KnOQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YUBpeY7yvgo9UJe25lyaTkXN9eqvci7g+yXrTMi8wurkq18JUtTIUUDiXkH6HwG26
 cPqW9C/UCkL8CTwLPnslJgXmmMODTXA6556UNBJ7LFft+SRWVnvsc5OxNlCZCGSuxo
 ZTUEKxwntWN3rtC+RB2nTet99RqsYapYRBRvS0BI=
Received: by mail-ej1-f45.google.com with SMTP id k8so359839ejv.3;
 Tue, 21 Apr 2020 16:01:40 -0700 (PDT)
X-Gm-Message-State: AGi0PuY6joe0DANS8f2crjJaktVpVU6/xGUkzr7m+d/aO5axGPT9rztV
 KRR/XcHupXNbPKsVw1uK6ZEReR9Wj+dP5bDxXQ==
X-Google-Smtp-Source: APiQypJjtQ9J79KZq2uuN/KxEwfL8dIg+xvPcbzJEGwVqG3VA0FTVqHmr1wJByUQFRVOzIk8+SnGlVKcLKQub2AHOLY=
X-Received: by 2002:a17:906:eb90:: with SMTP id
 mh16mr23786643ejb.201.1587510098939; 
 Tue, 21 Apr 2020 16:01:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200415011319.25559-1-jitao.shi@mediatek.com>
 <20200415011319.25559-3-jitao.shi@mediatek.com>
In-Reply-To: <20200415011319.25559-3-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 22 Apr 2020 07:01:27 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9-=VxBYbz2VNnPEphpa2gYBJnrVfJvL5Z+G6m_vcg2xQ@mail.gmail.com>
Message-ID: <CAAOTY_9-=VxBYbz2VNnPEphpa2gYBJnrVfJvL5Z+G6m_vcg2xQ@mail.gmail.com>
Subject: Re: [PATCH v15 2/3] dt-bindings: display: mediatek: convert the
 document format from txt to yaml
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_160142_019760_BA63E6B7 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream <srv_heupstream@mediatek.com>, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKUGxlYXNlIGZpeHVwIHRoZXNlIGNoZWNrcGF0Y2ggd2FybmluZ3MuCgpXQVJO
SU5HOiBNaXNzaW5nIGNvbW1pdCBkZXNjcmlwdGlvbiAtIEFkZCBhbiBhcHByb3ByaWF0ZSBvbmUK
V0FSTklORzogRFQgYmluZGluZyBkb2NzIGFuZCBpbmNsdWRlcyBzaG91bGQgYmUgYSBzZXBhcmF0
ZSBwYXRjaC4gU2VlOgpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3VibWl0dGlu
Zy1wYXRjaGVzLnR4dApXQVJOSU5HOiBEVCBiaW5kaW5nIGRvY3MgYW5kIGluY2x1ZGVzIHNob3Vs
ZCBiZSBhIHNlcGFyYXRlIHBhdGNoLiBTZWU6CkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9zdWJtaXR0aW5nLXBhdGNoZXMudHh0CldBUk5JTkc6IERUIGJpbmRpbmcgZG9jdW1lbnRz
IHNob3VsZCBiZSBsaWNlbnNlZCAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKIzcxOiBG
SUxFOiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9t
ZWRpYXRlayxkcGkueWFtbDoxOgorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAoK
UmVnYXJkcywKQ2h1bi1LdWFuZy4KCkppdGFvIFNoaSA8aml0YW8uc2hpQG1lZGlhdGVrLmNvbT4g
5pa8IDIwMjDlubQ05pyIMTXml6Ug6YCx5LiJIOS4iuWNiDk6MTPlr6vpgZPvvJoKPgo+IFNpZ25l
ZC1vZmYtYnk6IEppdGFvIFNoaSA8aml0YW8uc2hpQG1lZGlhdGVrLmNvbT4KPiAtLS0KPiAgLi4u
L2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHBpLnR4dCAgICAgfCA0MiAtLS0t
LS0tLS0tCj4gIC4uLi9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRwaS55YW1s
ICAgIHwgOTcgKysrKysrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDk3IGlu
c2VydGlvbnMoKyksIDQyIGRlbGV0aW9ucygtKQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHBp
LnR4dAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHBpLnlhbWwKPgo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRl
ayxkcGkudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVk
aWF0ZWsvbWVkaWF0ZWssZHBpLnR4dAo+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDc3ZGVmNDQ1NjcwNi4uMDAwMDAwMDAwMDAwCj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHBpLnR4dAo+ICsrKyAvZGV2
L251bGwKPiBAQCAtMSw0MiArMCwwIEBACj4gLU1lZGlhdGVrIERQSSBEZXZpY2UKPiAtPT09PT09
PT09PT09PT09PT09PQo+IC0KPiAtVGhlIE1lZGlhdGVrIERQSSBmdW5jdGlvbiBibG9jayBpcyBh
IHNpbmsgb2YgdGhlIGRpc3BsYXkgc3Vic3lzdGVtIGFuZAo+IC1wcm92aWRlcyA4LWJpdCBSR0Iv
WVVWNDQ0IG9yIDgvMTAvMTAtYml0IFlVVjQyMiBwaXhlbCBkYXRhIG9uIGEgcGFyYWxsZWwKPiAt
b3V0cHV0IGJ1cy4KPiAtCj4gLVJlcXVpcmVkIHByb3BlcnRpZXM6Cj4gLS0gY29tcGF0aWJsZTog
Im1lZGlhdGVrLDxjaGlwPi1kcGkiCj4gLSAgdGhlIHN1cHBvcnRlZCBjaGlwcyBhcmUgbXQyNzAx
ICwgbXQ4MTczIGFuZCBtdDgxODMuCj4gLS0gcmVnOiBQaHlzaWNhbCBiYXNlIGFkZHJlc3MgYW5k
IGxlbmd0aCBvZiB0aGUgY29udHJvbGxlcidzIHJlZ2lzdGVycwo+IC0tIGludGVycnVwdHM6IFRo
ZSBpbnRlcnJ1cHQgc2lnbmFsIGZyb20gdGhlIGZ1bmN0aW9uIGJsb2NrLgo+IC0tIGNsb2Nrczog
ZGV2aWNlIGNsb2Nrcwo+IC0gIFNlZSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
Y2xvY2svY2xvY2stYmluZGluZ3MudHh0IGZvciBkZXRhaWxzLgo+IC0tIGNsb2NrLW5hbWVzOiBt
dXN0IGNvbnRhaW4gInBpeGVsIiwgImVuZ2luZSIsIGFuZCAicGxsIgo+IC0tIHBvcnQ6IE91dHB1
dCBwb3J0IG5vZGUgd2l0aCBlbmRwb2ludCBkZWZpbml0aW9ucyBhcyBkZXNjcmliZWQgaW4KPiAt
ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3JhcGgudHh0LiBUaGlzIHBvcnQg
c2hvdWxkIGJlIGNvbm5lY3RlZAo+IC0gIHRvIHRoZSBpbnB1dCBwb3J0IG9mIGFuIGF0dGFjaGVk
IEhETUkgb3IgTFZEUyBlbmNvZGVyIGNoaXAuCj4gLQo+IC1PcHRpb25hbCBwcm9wZXJ0aWVzOgo+
IC0tIHBpbmN0cmwtbmFtZXM6IENvbnRhaW4gImRlZmF1bHQiIGFuZCAic2xlZXAiLgo+IC0KPiAt
RXhhbXBsZToKPiAtCj4gLWRwaTA6IGRwaUAxNDAxZDAwMCB7Cj4gLSAgICAgICBjb21wYXRpYmxl
ID0gIm1lZGlhdGVrLG10ODE3My1kcGkiOwo+IC0gICAgICAgcmVnID0gPDAgMHgxNDAxZDAwMCAw
IDB4MTAwMD47Cj4gLSAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTk0IElSUV9UWVBFX0xF
VkVMX0xPVz47Cj4gLSAgICAgICBjbG9ja3MgPSA8Jm1tc3lzIENMS19NTV9EUElfUElYRUw+LAo+
IC0gICAgICAgICAgICAgICAgPCZtbXN5cyBDTEtfTU1fRFBJX0VOR0lORT4sCj4gLSAgICAgICAg
ICAgICAgICA8JmFwbWl4ZWRzeXMgQ0xLX0FQTUlYRURfVFZEUExMPjsKPiAtICAgICAgIGNsb2Nr
LW5hbWVzID0gInBpeGVsIiwgImVuZ2luZSIsICJwbGwiOwo+IC0gICAgICAgcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IiwgInNsZWVwIjsKPiAtICAgICAgIHBpbmN0cmwtMCA9IDwmZHBpX3Bpbl9m
dW5jPjsKPiAtICAgICAgIHBpbmN0cmwtMSA9IDwmZHBpX3Bpbl9pZGxlPjsKPiAtCj4gLSAgICAg
ICBwb3J0IHsKPiAtICAgICAgICAgICAgICAgZHBpMF9vdXQ6IGVuZHBvaW50IHsKPiAtICAgICAg
ICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmhkbWkwX2luPjsKPiAtICAgICAg
ICAgICAgICAgfTsKPiAtICAgICAgIH07Cj4gLX07Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRwaS55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVk
aWF0ZWssZHBpLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MC4uMmMyZDZhNzFjYjhiCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRwaS55YW1sCj4gQEAg
LTAsMCArMSw5NyBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gKyVZ
QU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kaXNw
bGF5L21lZGlhdGVrL21lZGlhdGVrLGRwaS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBtZWRpYXRlayBE
UEkgQ29udHJvbGxlciBEZXZpY2UgVHJlZSBCaW5kaW5ncwo+ICsKPiArbWFpbnRhaW5lcnM6Cj4g
KyAgLSBDSyBIdSA8Y2suaHVAbWVkaWF0ZWsuY29tPgo+ICsgIC0gSml0YW8gc2hpIDxqaXRhby5z
aGlAbWVkaWF0ZWsuY29tPgo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBUaGUgTWVkaWF0ZWsg
RFBJIGZ1bmN0aW9uIGJsb2NrIGlzIGEgc2luayBvZiB0aGUgZGlzcGxheSBzdWJzeXN0ZW0gYW5k
Cj4gKyAgcHJvdmlkZXMgOC1iaXQgUkdCL1lVVjQ0NCBvciA4LzEwLzEwLWJpdCBZVVY0MjIgcGl4
ZWwgZGF0YSBvbiBhIHBhcmFsbGVsCj4gKyAgb3V0cHV0IGJ1cy4KPiArCj4gK3Byb3BlcnRpZXM6
Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGVudW06Cj4gKyAgICAgIC0gbWVkaWF0ZWssbXQyNzAx
LWRwaQo+ICsgICAgICAtIG1lZGlhdGVrLG10ODE3My1kcGkKPiArICAgICAgLSBtZWRpYXRlayxt
dDgxODMtZHBpCj4gKwo+ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGludGVy
cnVwdHM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBpdGVtczoK
PiArICAgICAgLSBkZXNjcmlwdGlvbjogUGl4ZWwgQ2xvY2sKPiArICAgICAgLSBkZXNjcmlwdGlv
bjogRW5naW5lIENsb2NrCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IERQSSBQTEwKPiArCj4gKyAg
Y2xvY2stbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogcGl4ZWwKPiArICAg
ICAgLSBjb25zdDogZW5naW5lCj4gKyAgICAgIC0gY29uc3Q6IHBsbAo+ICsKPiArICBwaW5jdHJs
LTA6IHRydWUKPiArICBwaW5jdHJsLTE6IHRydWUKPiArCj4gKyAgcGluY3RybC1uYW1lczoKPiAr
ICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBkZWZhdWx0Cj4gKyAgICAgIC0gY29uc3Q6IHNs
ZWVwCj4gKwo+ICsgIHBvcnQ6Cj4gKyAgICB0eXBlOiBvYmplY3QKPiArICAgIGRlc2NyaXB0aW9u
Ogo+ICsgICAgICBPdXRwdXQgcG9ydCBub2RlIHdpdGggZW5kcG9pbnQgZGVmaW5pdGlvbnMgYXMg
ZGVzY3JpYmVkIGluCj4gKyAgICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9n
cmFwaC50eHQuIFRoaXMgcG9ydCBzaG91bGQgYmUgY29ubmVjdGVkCj4gKyAgICAgIHRvIHRoZSBp
bnB1dCBwb3J0IG9mIGFuIGF0dGFjaGVkIEhETUkgb3IgTFZEUyBlbmNvZGVyIGNoaXAuCj4gKwo+
ICsgICAgcHJvcGVydGllczoKPiArICAgICAgZW5kcG9pbnQ6Cj4gKyAgICAgICAgdHlwZTogb2Jq
ZWN0Cj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0g
aW50ZXJydXB0cwo+ICsgIC0gY2xvY2tzCj4gKyAgLSBjbG9jay1uYW1lcwo+ICsgIC0gcG9ydAo+
ICsKPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtleGFtcGxlczoKPiArICAt
IHwKPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0t
Z2ljLmg+Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svbXQ4MTczLWNsay5oPgo+
ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMu
aD4KPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEu
aD4KPiArICAgIGRwaTA6IGRwaUAxNDAxZDAwMCB7Cj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJt
ZWRpYXRlayxtdDgxNzMtZHBpIjsKPiArICAgICAgICByZWcgPSA8MCAweDE0MDFkMDAwIDAgMHgx
MDAwPjsKPiArICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTk0IElSUV9UWVBFX0xFVkVM
X0xPVz47Cj4gKyAgICAgICAgY2xvY2tzID0gPCZtbXN5cyBDTEtfTU1fRFBJX1BJWEVMPiwKPiAr
ICAgICAgICAgICAgIDwmbW1zeXMgQ0xLX01NX0RQSV9FTkdJTkU+LAo+ICsgICAgICAgICAgICAg
PCZhcG1peGVkc3lzIENMS19BUE1JWEVEX1RWRFBMTD47Cj4gKyAgICAgICAgY2xvY2stbmFtZXMg
PSAicGl4ZWwiLCAiZW5naW5lIiwgInBsbCI7Cj4gKyAgICAgICAgcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IiwgInNsZWVwIjsKPiArICAgICAgICBwaW5jdHJsLTAgPSA8JmRwaV9waW5fZnVuYz47
Cj4gKyAgICAgICAgcGluY3RybC0xID0gPCZkcGlfcGluX2lkbGU+Owo+ICsKPiArICAgICAgICBw
b3J0IHsKPiArICAgICAgICAgICAgZHBpMF9vdXQ6IGVuZHBvaW50IHsKPiArICAgICAgICAgICAg
ICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmaGRtaTBfaW4+Owo+ICsgICAgICAgICAgICB9Owo+ICsg
ICAgICAgIH07Cj4gKyAgICB9Owo+ICsKPiArLi4uCj4gLS0KPiAyLjEyLjUKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5n
IGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
