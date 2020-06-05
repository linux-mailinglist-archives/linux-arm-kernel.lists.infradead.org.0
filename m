Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B0D1EFE81
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 19:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62O9e21VLJ+Zlss43yy5bc3qwCvqRfoFBRbQoxZZP7E=; b=EeFKKU/FwqFaVt
	3L8bOD94uHD+iKNGyojycU1jf2TT3fBG78gXlwv1/JsGo9HxJLjraWam71oqJWH0MtlkLHqpTXCw6
	erhh6LvQQMwcfORdMk9MHn2PVWw4g+lurj311aRe+Fe52BcwYgy23ydvOQUq7cdfSsOAzJVnhblO3
	n0Bkjiw3/xnvDoPBLgqBwcCGtmrOrmhVdl2iC1N0Jb4OGJJheJof0kar/W88mAbYTxuqk7cikN1vC
	wJAjSUW1Gu0/LhncT2qgHvqQCbcKxfT7JiXwbRTGp6f38ELrYK3TG7mtPNVTTGhfAk2laip7+lzc0
	IdXICxTtKDVzddKPcmXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhFpY-0004nn-BJ; Fri, 05 Jun 2020 17:08:32 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhFpP-0004n9-Ap
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 17:08:24 +0000
Received: by mail-qv1-xf41.google.com with SMTP id j7so5056501qvp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 10:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=41FYPole99m3v6lC0GIqr4V55A/d/jnjjKgUOpu4n94=;
 b=1IMBW+XzfsCx1tCVpcGRzt74dpwHtBSFNsEjfN7Ic6MFqZ+oUwjAeyj54JL6OnyjVe
 1Zx8bKoJ4RUpZlw4dzhAIopzEpMsQpulK9ZjqH2jAF8LYA5hjqLkMFim4mqcsWTh+IpT
 GWOBcBNUPndtXVrsVkjpD8jpJb46mp43OWdAu9D9NYNAq+67Ulma+0GZR9pMC7W26Fnh
 AZmRQQknEgca3WEtkAVkaPHkm9JhQ+EqTlC/ddMsphtuFFxCsbPhrsV1HNesnGosGkDZ
 BiF+B8LqPh1nWf5BXGir659WlKmAnwow7rgt/OWihurQpV2AO+nSCO+CcWi9EU6+oPZs
 8IuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=41FYPole99m3v6lC0GIqr4V55A/d/jnjjKgUOpu4n94=;
 b=de2dZ35rxWQCp4NfyB1gxPqsFAAEMszMUAmTJLXzBE7liucY+Xq4BJ5C+YhGLPDHHs
 WnPS4+5u9OXs3m6K830qMDohg94WaDQUDfnOqgDKQ6vmcZpmMzJ98EvQRXyP8oU9loJi
 63lKhxF+Z2Nsx4NBHhVOGuGuwZ5xsz/hp+49DFnzvUkxv8rESjnN4CVbBMv1TJtV8aOk
 6cjbWR7odENj4FB04bHSj1VShksgv1TshV5LPc2Fxk6L8SdDyaTLR9k0cE+5kT6QtSMz
 gMjq2Nfcbh1NdGCq0a/r5rez1wIIrle6uD8vnvtm48kAnE5GUQroIGZnzVaxMI1kT0o2
 cW8g==
X-Gm-Message-State: AOAM533Fqx61UAjM39z463h8LeKpoSW0swqP44vZgpoXEmasmxRL7Ebp
 8o0tBDEabp7qKfynEuqOPGYLDg==
X-Google-Smtp-Source: ABdhPJyn1telDZ5FqrTxUYY8AmIMYbMLLU9NL1zo2VrgBXk49DRIzQpbEYzJCmUAKuE4zcNpLnYXtA==
X-Received: by 2002:ad4:418f:: with SMTP id e15mr10756123qvp.184.1591376902144; 
 Fri, 05 Jun 2020 10:08:22 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id 22sm305478qkd.18.2020.06.05.10.08.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 10:08:21 -0700 (PDT)
Message-ID: <21efb826506f23d348fa58ca8b29eaca8c9dae55.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: uapi: h264: update reference lists
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jernej Skrabec <jernej.skrabec@siol.net>, paul.kocialkowski@bootlin.com,
 mripard@kernel.org
Date: Fri, 05 Jun 2020 13:08:19 -0400
In-Reply-To: <20200604185745.23568-2-jernej.skrabec@siol.net>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <20200604185745.23568-2-jernej.skrabec@siol.net>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_100823_423094_7CAB302C 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1ZGkgMDQganVpbiAyMDIwIMOgIDIwOjU3ICswMjAwLCBKZXJuZWogU2tyYWJlYyBhIMOp
Y3JpdCA6Cj4gV2hlbiBkZWFsaW5nIHdpdGggd2l0aCBpbnRlcmxhY2VkIGZyYW1lcywgcmVmZXJl
bmNlIGxpc3RzIG11c3QgdGVsbCBpZgo+IGVhY2ggcGFydGljdWxhciByZWZlcmVuY2UgaXMgbWVh
bnQgZm9yIHRvcCBvciBib3R0b20gZmllbGQuIFRoaXMgaW5mbwo+IGlzIGN1cnJlbnRseSBub3Qg
cHJvdmlkZWQgYXQgYWxsIGluIHRoZSBIMjY0IHJlbGF0ZWQgY29udHJvbHMuCj4gCj4gTWFrZSBy
ZWZlcmVuY2UgbGlzdHMgaG9sZCBhIHN0cnVjdHVyZSB3aGljaCB3aWxsIGFsc28gaG9sZCBmbGFn
cyBhbG9uZwo+IGluZGV4IGludG8gRFBCIGFycmF5LiBGbGFncyB3aWxsIHRlbGwgaWYgcmVmZXJl
bmNlIGlzIG1lYW50IGZvciB0b3Agb3IKPiBib3R0b20gZmllbGQuCj4gCj4gQ3VycmVudGx5IHRo
ZSBvbmx5IHVzZXIgb2YgdGhlc2UgbGlzdHMgaXMgQ2VkcnVzIHdoaWNoIGlzIGp1c3QgY29tcGls
ZQo+IGZpeGVkIGhlcmUuIEFjdHVhbCB1c2FnZSBvZiBuZXdseSBpbnRyb2R1Y2VkIGZsYWdzIHdp
bGwgY29tZSBpbgo+IGZvbGxvd2luZyBjb21taXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmVybmVq
IFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKVGhpcyBsb29rcyBsaWtlIHRoZSBy
aWdodCBhcHByb2FjaCB0byBtZSBhbmQgaXMgZXh0ZW5zaWJsZSBpZiBhbnl0aGluZwplbHNlIGlz
IG5lZWRlZCBmb3IgTVZDIGFuZCBTVkMgc3BlY2lhbCByZWZlcmVuY2luZyAoYXQgbGVhc3Qgd2ls
bCBiZQplbm91Z2ggZm9yIHdoYXQgSC4yNjQgYWN0dWFsbHkgc3VwcG9ydHMgaW4gdGhpcyByZWdh
cmQpLgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29s
bGFib3JhLmNvbT4KCj4gLS0tCj4gIC4uLi9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCAg
ICAgICAgICAgICB8IDQwICsrKysrKysrKysrKysrKysrKy0KPiAgLi4uL3N0YWdpbmcvbWVkaWEv
c3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMgIHwgIDYgKy0tCj4gIGluY2x1ZGUvbWVkaWEvaDI2
NC1jdHJscy5oICAgICAgICAgICAgICAgICAgICB8IDEyICsrKysrLQo+ICAzIGZpbGVzIGNoYW5n
ZWQsIDUxIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCBi
L0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJz
dAo+IGluZGV4IGQwZDUwNmE0NDRiMS4uNmMzNmQyOThkYjIwIDEwMDY0NAo+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdAo+ICsr
KyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVj
LnJzdAo+IEBAIC0xODQzLDEwICsxODQzLDEwIEBAIGVudW0gdjRsMl9tcGVnX3ZpZGVvX2gyNjRf
aGllcmFyY2hpY2FsX2NvZGluZ190eXBlIC0KPiAgICAgICogLSBfX3UzMgo+ICAgICAgICAtIGBg
c2xpY2VfZ3JvdXBfY2hhbmdlX2N5Y2xlYGAKPiAgICAgICAgLQo+IC0gICAgKiAtIF9fdTgKPiAr
ICAgICogLSBzdHJ1Y3QgOmM6dHlwZTpgdjRsMl9oMjY0X3JlZmVyZW5jZWAKPiAgICAgICAgLSBg
YHJlZl9waWNfbGlzdDBbMzJdYGAKPiAgICAgICAgLSBSZWZlcmVuY2UgcGljdHVyZSBsaXN0IGFm
dGVyIGFwcGx5aW5nIHRoZSBwZXItc2xpY2UgbW9kaWZpY2F0aW9ucwo+IC0gICAgKiAtIF9fdTgK
PiArICAgICogLSBzdHJ1Y3QgOmM6dHlwZTpgdjRsMl9oMjY0X3JlZmVyZW5jZWAKPiAgICAgICAg
LSBgYHJlZl9waWNfbGlzdDFbMzJdYGAKPiAgICAgICAgLSBSZWZlcmVuY2UgcGljdHVyZSBsaXN0
IGFmdGVyIGFwcGx5aW5nIHRoZSBwZXItc2xpY2UgbW9kaWZpY2F0aW9ucwo+ICAgICAgKiAtIF9f
dTMyCj4gQEAgLTE5MjYsNiArMTkyNiw0MiBAQCBlbnVtIHY0bDJfbXBlZ192aWRlb19oMjY0X2hp
ZXJhcmNoaWNhbF9jb2RpbmdfdHlwZSAtCj4gICAgICAgIC0gYGBjaHJvbWFfb2Zmc2V0WzMyXVsy
XWBgCj4gICAgICAgIC0KPiAgCj4gK2BgUGljdHVyZSBSZWZlcmVuY2VgYAo+ICsKPiArLi4gYzp0
eXBlOjogdjRsMl9oMjY0X3JlZmVyZW5jZQo+ICsKPiArLi4gY3NzY2xhc3M6OiBsb25ndGFibGUK
PiArCj4gKy4uIGZsYXQtdGFibGU6OiBzdHJ1Y3QgdjRsMl9oMjY0X3JlZmVyZW5jZQo+ICsgICAg
OmhlYWRlci1yb3dzOiAgMAo+ICsgICAgOnN0dWItY29sdW1uczogMAo+ICsgICAgOndpZHRoczog
ICAgICAgMSAxIDIKPiArCj4gKyAgICAqIC0gX191MTYKPiArICAgICAgLSBgYGZsYWdzYGAKPiAr
ICAgICAgLSBTZWUgOnJlZjpgUGljdHVyZSBSZWZlcmVuY2UgRmxhZ3MgPGgyNjRfcmVmZXJlbmNl
X2ZsYWdzPmAKPiArICAgICogLSBfX3U4Cj4gKyAgICAgIC0gYGBpbmRleGBgCj4gKyAgICAgIC0K
PiArCj4gKy4uIF9oMjY0X3JlZmVyZW5jZV9mbGFnczoKPiArCj4gK2BgUGljdHVyZSBSZWZlcmVu
Y2UgRmxhZ3NgYAo+ICsKPiArLi4gY3NzY2xhc3M6OiBsb25ndGFibGUKPiArCj4gKy4uIGZsYXQt
dGFibGU6Ogo+ICsgICAgOmhlYWRlci1yb3dzOiAgMAo+ICsgICAgOnN0dWItY29sdW1uczogMAo+
ICsgICAgOndpZHRoczogICAgICAgMSAxIDIKPiArCj4gKyAgICAqIC0gYGBWNEwyX0gyNjRfUkVG
RVJFTkNFX0ZMQUdfVE9QX0ZJRUxEYGAKPiArICAgICAgLSAweDAwMDAwMDAxCj4gKyAgICAgIC0K
PiArICAgICogLSBgYFY0TDJfSDI2NF9SRUZFUkVOQ0VfRkxBR19CT1RUT01fRklFTERgYAo+ICsg
ICAgICAtIDB4MDAwMDAwMDIKPiArICAgICAgLQo+ICsKPiAgYGBWNEwyX0NJRF9NUEVHX1ZJREVP
X0gyNjRfREVDT0RFX1BBUkFNUyAoc3RydWN0KWBgCj4gICAgICBTcGVjaWZpZXMgdGhlIGRlY29k
ZSBwYXJhbWV0ZXJzIChhcyBleHRyYWN0ZWQgZnJvbSB0aGUgYml0c3RyZWFtKQo+ICAgICAgZm9y
IHRoZSBhc3NvY2lhdGVkIEgyNjQgc2xpY2UgZGF0YS4gVGhpcyBpbmNsdWRlcyB0aGUgbmVjZXNz
YXJ5Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2Vk
cnVzX2gyNjQuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gy
NjQuYwo+IGluZGV4IDU0ZWUyYWE0MjNlMi4uY2NlNTI3YmJkZjg2IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+ICsrKyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYwo+IEBAIC0xNjYs
OCArMTY2LDggQEAgc3RhdGljIHZvaWQgY2VkcnVzX3dyaXRlX2ZyYW1lX2xpc3Qoc3RydWN0IGNl
ZHJ1c19jdHggKmN0eCwKPiAgCj4gIHN0YXRpYyB2b2lkIF9jZWRydXNfd3JpdGVfcmVmX2xpc3Qo
c3RydWN0IGNlZHJ1c19jdHggKmN0eCwKPiAgCQkJCSAgIHN0cnVjdCBjZWRydXNfcnVuICpydW4s
Cj4gLQkJCQkgICBjb25zdCB1OCAqcmVmX2xpc3QsIHU4IG51bV9yZWYsCj4gLQkJCQkgICBlbnVt
IGNlZHJ1c19oMjY0X3NyYW1fb2ZmIHNyYW0pCj4gKwkJCQkgICBjb25zdCBzdHJ1Y3QgdjRsMl9o
MjY0X3JlZmVyZW5jZSAqcmVmX2xpc3QsCj4gKwkJCQkgICB1OCBudW1fcmVmLCBlbnVtIGNlZHJ1
c19oMjY0X3NyYW1fb2ZmIHNyYW0pCj4gIHsKPiAgCWNvbnN0IHN0cnVjdCB2NGwyX2N0cmxfaDI2
NF9kZWNvZGVfcGFyYW1zICpkZWNvZGUgPSBydW4tPmgyNjQuZGVjb2RlX3BhcmFtczsKPiAgCXN0
cnVjdCB2YjJfcXVldWUgKmNhcF9xOwo+IEBAIC0xODgsNyArMTg4LDcgQEAgc3RhdGljIHZvaWQg
X2NlZHJ1c193cml0ZV9yZWZfbGlzdChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4LAo+ICAJCWludCBi
dWZfaWR4Owo+ICAJCXU4IGRwYl9pZHg7Cj4gIAo+IC0JCWRwYl9pZHggPSByZWZfbGlzdFtpXTsK
PiArCQlkcGJfaWR4ID0gcmVmX2xpc3RbaV0uaW5kZXg7Cj4gIAkJZHBiID0gJmRlY29kZS0+ZHBi
W2RwYl9pZHhdOwo+ICAKPiAgCQlpZiAoIShkcGItPmZsYWdzICYgVjRMMl9IMjY0X0RQQl9FTlRS
WV9GTEFHX0FDVElWRSkpCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvaDI2NC1jdHJscy5o
IGIvaW5jbHVkZS9tZWRpYS9oMjY0LWN0cmxzLmgKPiBpbmRleCAwODBmZDEyOTNjNDIuLjliMWNi
YzliYzM4ZSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL21lZGlhL2gyNjQtY3RybHMuaAo+ICsrKyBi
L2luY2x1ZGUvbWVkaWEvaDI2NC1jdHJscy5oCj4gQEAgLTE0MCw2ICsxNDAsMTQgQEAgc3RydWN0
IHY0bDJfaDI2NF9wcmVkX3dlaWdodF90YWJsZSB7Cj4gICNkZWZpbmUgVjRMMl9IMjY0X1NMSUNF
X0ZMQUdfRElSRUNUX1NQQVRJQUxfTVZfUFJFRAkweDA0Cj4gICNkZWZpbmUgVjRMMl9IMjY0X1NM
SUNFX0ZMQUdfU1BfRk9SX1NXSVRDSAkJMHgwOAo+ICAKPiArI2RlZmluZSBWNEwyX0gyNjRfUkVG
RVJFTkNFX0ZMQUdfVE9QX0ZJRUxECQkweDAxCj4gKyNkZWZpbmUgVjRMMl9IMjY0X1JFRkVSRU5D
RV9GTEFHX0JPVFRPTV9GSUVMRAkJMHgwMgo+ICsKPiArc3RydWN0IHY0bDJfaDI2NF9yZWZlcmVu
Y2Ugewo+ICsJX191OCBmbGFnczsKPiArCV9fdTggaW5kZXg7Cj4gK307Cj4gKwo+ICBzdHJ1Y3Qg
djRsMl9jdHJsX2gyNjRfc2xpY2VfcGFyYW1zIHsKPiAgCS8qIFNpemUgaW4gYnl0ZXMsIGluY2x1
ZGluZyBoZWFkZXIgKi8KPiAgCV9fdTMyIHNpemU7Cj4gQEAgLTE4Miw4ICsxOTAsOCBAQCBzdHJ1
Y3QgdjRsMl9jdHJsX2gyNjRfc2xpY2VfcGFyYW1zIHsKPiAgCSAqIEVudHJpZXMgb24gZWFjaCBs
aXN0IGFyZSBpbmRpY2VzIGludG8KPiAgCSAqIHY0bDJfY3RybF9oMjY0X2RlY29kZV9wYXJhbXMu
ZHBiW10uCj4gIAkgKi8KPiAtCV9fdTggcmVmX3BpY19saXN0MFszMl07Cj4gLQlfX3U4IHJlZl9w
aWNfbGlzdDFbMzJdOwo+ICsJc3RydWN0IHY0bDJfaDI2NF9yZWZlcmVuY2UgcmVmX3BpY19saXN0
MFszMl07Cj4gKwlzdHJ1Y3QgdjRsMl9oMjY0X3JlZmVyZW5jZSByZWZfcGljX2xpc3QxWzMyXTsK
PiAgCj4gIAlfX3UzMiBmbGFnczsKPiAgfTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
