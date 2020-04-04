Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A8319E580
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 16:20:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UsA1FwWvknQbyKW9uRhSimYl+LVZoSu+ssis0nvv9Q=; b=rjdXRAHjys54Vd
	oMfVEpGWH2oJ7dIK8QTIyYDRgrzKIP4ApAE2jbcksRih2b+LRaz3Eh0HWO8gQkuAq5CJ4OfJdO60H
	KaiR6dNAsk2g2pQoxpc1Yqhg9NLr5pznxSYgFmljqq2WXOT4RVNu/8qt8cLhXRDxl2xKS/ycBkn+v
	bmvPLJHhuAfHa+GrkkZLofNkszjX1mbTnkjBQtVAJuRARZd6sfZ7woz++y+/j2KR/K1286Zx0gE3g
	EDgskUc464iB7auAG95DdmS8Xx4AkDd0PR29lX6SayCTUMoN2JRmtxti0bc/LbbvBuU32G9ZczNhB
	p6M7tJ7aTfysNhgvDiJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKjeN-0000qP-Rk; Sat, 04 Apr 2020 14:19:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKjeH-0000pj-1X; Sat, 04 Apr 2020 14:19:50 +0000
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 735C12074B;
 Sat,  4 Apr 2020 14:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586009988;
 bh=1Sf4GRcpkzurYk5nWdRpUBTbjpEdNqlUaBNpb/X5+dQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=O8huTio9z+O50iibPA2HHY/QtrPqbwyWz1RKwJtA5+S2VErMFssNXpKRJJrdADcRm
 5+JvXRVC3t+WJybfvGrQgbbxeU2nflDlQvLq1tSR5YRFjjRTrEThBNrw9Btl8FNtVn
 tenQzu87ozx1AV6wDwtA8GZrfHCHMpzQkS2m2zjw=
Received: by mail-ed1-f51.google.com with SMTP id de14so12893727edb.4;
 Sat, 04 Apr 2020 07:19:48 -0700 (PDT)
X-Gm-Message-State: AGi0Pua9SWP9GtDFJXbF8n1+rZKM82xYdYgZxkCVnNI+3joTzcbfe+Ew
 TMQIZaKVdGx32CAw9JSmzeA80Gv8SJCF4yn8Gw==
X-Google-Smtp-Source: APiQypJUjRQr94z4xLuZ/juKRJi8yfwdfJgOA8X/UsmoNla4rM3c6EhUj/R+uzBope3z7L6dpYbRs0E13kmcBGuQwrQ=
X-Received: by 2002:a05:6402:335:: with SMTP id
 q21mr2832765edw.47.1586009986874; 
 Sat, 04 Apr 2020 07:19:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200331082725.81048-1-jitao.shi@mediatek.com>
 <20200331082725.81048-3-jitao.shi@mediatek.com>
In-Reply-To: <20200331082725.81048-3-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 4 Apr 2020 22:19:34 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-7xKF2tVioSU+qDU0qFs3CbUJFypB7RLakXR=PdvubFg@mail.gmail.com>
Message-ID: <CAAOTY_-7xKF2tVioSU+qDU0qFs3CbUJFypB7RLakXR=PdvubFg@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: display: mediatek: get mipitx
 calibration data from nvmem
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_071949_126752_6E9F9B2E 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5
tDPmnIgzMeaXpSDpgLHkuowg5LiL5Y2INDoyOOWvq+mBk++8mgo+Cj4gQWRkIHByb3BlcnRpZXMg
dG8gZ2V0IGdldCBtaXBpdHggY2FsaWJyYXRpb24gZGF0YS4KClJldmlld2VkLWJ5OiBDaHVuLUt1
YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4KCj4KPiBSZXZpZXdlZC1ieTogUm9iIEhl
cnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBKaXRhbyBTaGkgPGppdGFv
LnNoaUBtZWRpYXRlay5jb20+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHNpLnR4dCAgICB8IDUgKysrKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRzaS50eHQgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkc2ku
dHh0Cj4gaW5kZXggZDc4YjZkNmQ4ZmFiLi44ZTQ3MjlkZThjODUgMTAwNjQ0Cj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWss
ZHNpLnR4dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5
L21lZGlhdGVrL21lZGlhdGVrLGRzaS50eHQKPiBAQCAtMzYsNiArMzYsOSBAQCBSZXF1aXJlZCBw
cm9wZXJ0aWVzOgo+ICBPcHRpb25hbCBwcm9wZXJ0aWVzOgo+ICAtIGRyaXZlLXN0cmVuZ3RoLW1p
Y3JvYW1wOiBhZGp1c3QgZHJpdmluZyBjdXJyZW50LCBzaG91bGQgYmUgMzAwMCB+IDYwMDAuIEFu
ZAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRo
ZSBzdGVwIGlzIDIwMC4KPiArLSBudm1lbS1jZWxsczogQSBwaGFuZGxlIHRvIHRoZSBjYWxpYnJh
dGlvbiBkYXRhIHByb3ZpZGVkIGJ5IGEgbnZtZW0gZGV2aWNlLiBJZgo+ICsgICAgICAgICAgICAg
ICB1bnNwZWNpZmllZCBkZWZhdWx0IHZhbHVlcyBzaGFsbCBiZSB1c2VkLgo+ICstIG52bWVtLWNl
bGwtbmFtZXM6IFNob3VsZCBiZSAiY2FsaWJyYXRpb24tZGF0YSIKPgo+ICBFeGFtcGxlOgo+Cj4g
QEAgLTQ3LDYgKzUwLDggQEAgbWlwaV90eDA6IG1pcGktZHBoeUAxMDIxNTAwMCB7Cj4gICAgICAg
ICAjY2xvY2stY2VsbHMgPSA8MD47Cj4gICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+ICAgICAg
ICAgZHJpdmUtc3RyZW5ndGgtbWljcm9hbXAgPSA8NDYwMD47Cj4gKyAgICAgICBudm1lbS1jZWxs
cz0gPCZtaXBpX3R4X2NhbGlicmF0aW9uPjsKPiArICAgICAgIG52bWVtLWNlbGwtbmFtZXMgPSAi
Y2FsaWJyYXRpb24tZGF0YSI7Cj4gIH07Cj4KPiAgZHNpMDogZHNpQDE0MDFiMDAwIHsKPiAtLQo+
IDIuMjEuMAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
