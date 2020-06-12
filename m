Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47C61F7AE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 17:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYMAjMmadaUyNt6uir5KyTpYU84gjzK+K1CDacDJshE=; b=Lb65DXRpLnaAEW
	3V4exOwtKX8aQFn5ucNwcPJz3UbdFq7fopLsastOwLu6lOB+dkKnrfOH1MWZ2O0YMNkFL+fiwNWyu
	6pVnFfaq9/tpDpxs7RGw4oc+YG96oazNPVDosEft15jvqjiNdXt4e+HDFGolfr5zJn7gQp4b0Jn9b
	00HwtOWa7XE6BC+jiQ8+76fpwUcJqPT+oyq7LK5WzK0oK1VeoP6vIFUS6QgCX4Addj8FSldj1xYJu
	tkmlO/mAQnJw809Qxf+DTKoklProO9LWA0Kyk+fSTi9O6XXr94Fo/oDGJhj9u/zLITfccRBMTE0SG
	baGgPp6em707sM2hYikw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjlbJ-0006Q6-GH; Fri, 12 Jun 2020 15:28:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjlbA-0006PO-IV; Fri, 12 Jun 2020 15:28:06 +0000
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E648020838;
 Fri, 12 Jun 2020 15:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591975683;
 bh=3yHkAwubmunjmiesfM1rpsD37zARlutAh9UqD8QN8/E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=O3tSNdHzuZcgNHn9HdaY2O6n8HPcJ5t7i/x7C1z0ogjs7cl+G8eflb5siB18LUeNr
 lTpbIuOtoakfc0L92Ip5SCoTTNhItXU/ubp/8M0qMFxMjiJ7mTT7knjGgYxPtkv0Um
 VVF90NfntS3ECg8XrwPmZIOK6V5rVL/I2u+a54FM=
Received: by mail-ed1-f46.google.com with SMTP id w7so6728962edt.1;
 Fri, 12 Jun 2020 08:28:02 -0700 (PDT)
X-Gm-Message-State: AOAM532HL34heC+pwbhI89MWB9kY4/ntCnr/eU2K8cFfHn7pP7MEFtPE
 UQX4+KLYlvff2IpvtWKoyHsiHoI/pkei/2vGpg==
X-Google-Smtp-Source: ABdhPJx4hf1qYx8OMecO3zKZjUrgZ6Cu0RNr2WqkSXT6FEmCa+mY/AG8YYudQbNDLiDsLdfpgLvN1G09M+5JXUzk7WA=
X-Received: by 2002:aa7:c4c7:: with SMTP id p7mr12645730edr.271.1591975681395; 
 Fri, 12 Jun 2020 08:28:01 -0700 (PDT)
MIME-Version: 1.0
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
 <CAAOTY__g3Fnwsoqx=x_tgdMii5K_L9TmF_9048XbAOSJwb-Cxg@mail.gmail.com>
 <1591867563.27949.9.camel@mtkswgap22>
 <CAAOTY_8gOjr9nBUVA6oNu0v+D0Rc0AbhJ41wBCvDpMme+kuHmA@mail.gmail.com>
 <1591931042.32738.26.camel@mtkswgap22>
In-Reply-To: <1591931042.32738.26.camel@mtkswgap22>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 12 Jun 2020 23:27:49 +0800
X-Gmail-Original-Message-ID: <CAAOTY__zXZvv1gcKgxnbpv2RjDLyuQ1NEz8Nr+dtn4GKE1cvMA@mail.gmail.com>
Message-ID: <CAAOTY__zXZvv1gcKgxnbpv2RjDLyuQ1NEz8Nr+dtn4GKE1cvMA@mail.gmail.com>
Subject: Re: [PATCH 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_082804_652910_50FCC743 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIE5lYWw6CgpOZWFsIExpdSA8bmVhbC5saXVAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5tDbm
nIgxMuaXpSDpgLHkupQg5LiK5Y2IMTE6MDTlr6vpgZPvvJoKPgo+IEhpIENodW4tS3VhbmcsCj4K
PiBbc25pcF0KPiA+ID4gPiA+ICsvKgo+ID4gPiA+ID4gKyAqIGRldmFwY192aW9sYXRpb25faXJx
IC0gdGhlIGRldmFwYyBJbnRlcnJ1cHQgU2VydmljZSBSb3V0aW5lIChJU1IpIHdpbGwgZHVtcAo+
ID4gPiA+ID4gKyAqICAgICAgICAgICAgICAgICAgICAgICB2aW9sYXRpb24gaW5mb3JtYXRpb24g
aW5jbHVkaW5nIHdoaWNoIG1hc3RlciB2aW9sYXRlcwo+ID4gPiA+ID4gKyAqICAgICAgICAgICAg
ICAgICAgICAgICBhY2Nlc3Mgc2xhdmUuCj4gPiA+ID4gPiArICovCj4gPiA+ID4gPiArc3RhdGlj
IGlycXJldHVybl90IGRldmFwY192aW9sYXRpb25faXJxKGludCBpcnFfbnVtYmVyLCB2b2lkICpk
ZXZfaWQpCj4gPiA+ID4gPiArewo+ID4gPiA+ID4gKyAgICAgICB1MzIgc2xhdmVfdHlwZV9udW0g
PSBtdGtfZGV2YXBjX2N0eC0+c29jLT5zbGF2ZV90eXBlX251bTsKPiA+ID4gPiA+ICsgICAgICAg
Y29uc3Qgc3RydWN0IG10a19kZXZpY2VfaW5mbyAqKmRldmljZV9pbmZvOwo+ID4gPiA+ID4gKyAg
ICAgICBzdHJ1Y3QgbXRrX2RldmFwY192aW9faW5mbyAqdmlvX2luZm87Cj4gPiA+ID4gPiArICAg
ICAgIGludCBzbGF2ZV90eXBlLCB2aW9faWR4LCBpbmRleDsKPiA+ID4gPiA+ICsgICAgICAgY29u
c3QgY2hhciAqdmlvX21hc3RlcjsKPiA+ID4gPiA+ICsgICAgICAgdW5zaWduZWQgbG9uZyBmbGFn
czsKPiA+ID4gPiA+ICsgICAgICAgYm9vbCBub3JtYWw7Cj4gPiA+ID4gPiArICAgICAgIHU4IHBl
cm07Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAgIHNwaW5fbG9ja19pcnFzYXZlKCZkZXZh
cGNfbG9jaywgZmxhZ3MpOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICBkZXZpY2VfaW5m
byA9IG10a19kZXZhcGNfY3R4LT5zb2MtPmRldmljZV9pbmZvOwo+ID4gPiA+ID4gKyAgICAgICB2
aW9faW5mbyA9IG10a19kZXZhcGNfY3R4LT5zb2MtPnZpb19pbmZvOwo+ID4gPiA+ID4gKyAgICAg
ICBub3JtYWwgPSBmYWxzZTsKPiA+ID4gPiA+ICsgICAgICAgdmlvX2lkeCA9IC0xOwo+ID4gPiA+
ID4gKyAgICAgICBpbmRleCA9IC0xOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICAvKiBU
aGVyZSBhcmUgbXVsdGlwbGUgREVWQVBDX1BEICovCj4gPiA+ID4gPiArICAgICAgIGZvciAoc2xh
dmVfdHlwZSA9IDA7IHNsYXZlX3R5cGUgPCBzbGF2ZV90eXBlX251bTsgc2xhdmVfdHlwZSsrKSB7
Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgaWYgKCFjaGVja190eXBlMl92aW9fc3RhdHVzKHNs
YXZlX3R5cGUsICZ2aW9faWR4LCAmaW5kZXgpKQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgaWYgKCFtdGtfZGV2YXBjX2R1bXBfdmlvX2RiZyhzbGF2ZV90eXBlLCAmdmlvX2lkeCwK
PiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJmluZGV4KSkKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y29udGludWU7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgLyogRW5zdXJl
IHRoYXQgdmlvbGF0aW9uIGluZm8gYXJlIHdyaXR0ZW4gYmVmb3JlCj4gPiA+ID4gPiArICAgICAg
ICAgICAgICAgICogZnVydGhlciBvcGVyYXRpb25zCj4gPiA+ID4gPiArICAgICAgICAgICAgICAg
ICovCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgc21wX21iKCk7Cj4gPiA+ID4gPiArICAgICAg
ICAgICAgICAgbm9ybWFsID0gdHJ1ZTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICBtYXNrX21vZHVsZV9pcnEoc2xhdmVfdHlwZSwgdmlvX2lkeCwgdHJ1ZSk7Cj4gPiA+ID4g
PiArCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgaWYgKGNsZWFyX3Zpb19zdGF0dXMoc2xhdmVf
dHlwZSwgdmlvX2lkeCkpCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBwcl93YXJu
KFBGWCAiJXMsICVzOjB4JXgsICVzOjB4JXhcbiIsCj4gPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICJjbGVhciB2aW8gc3RhdHVzIGZhaWxlZCIsCj4gPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICJzbGF2ZV90eXBlIiwgc2xhdmVfdHlwZSwKPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInZpb19pbmRleCIsIHZpb19p
ZHgpOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHBlcm0gPSBnZXRfcGVy
bWlzc2lvbihzbGF2ZV90eXBlLCBpbmRleCwgdmlvX2luZm8tPmRvbWFpbl9pZCk7Cj4gPiA+ID4g
PiArCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgdmlvX21hc3RlciA9IG10a19kZXZhcGNfY3R4
LT5zb2MtPm1hc3Rlcl9nZXQKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICh2aW9f
aW5mby0+bWFzdGVyX2lkLAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIHZpb19p
bmZvLT52aW9fYWRkciwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBzbGF2ZV90
eXBlLAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIHZpb19pbmZvLT5zaGlmdF9z
dGFfYml0LAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIHZpb19pbmZvLT5kb21h
aW5faWQpOwo+ID4gPiA+Cj4gPiA+ID4gQ2FsbCBtdDY4NzNfYnVzX2lkX3RvX21hc3RlcigpIGRp
cmVjdGx5LiBGb3IgZmlyc3QgcGF0Y2gsIG1ha2UgdGhpbmdzCj4gPiA+ID4gYXMgc2ltcGxlIGFz
IHBvc3NpYmxlLgo+ID4gPgo+ID4gPiBJbiBkZXZhcGNfdmlvbGF0aW9uX2lycSgpIGZ1bmN0aW9u
LCB3ZSB1c2UgY29tbW9uIGZsb3cgdG8gaGFuZGxlIGVhY2gKPiA+ID4gZGV2YXBjIHZpb2xhdGlv
biBvbiBkaWZmZXJlbnQgcGxhdGZvcm1zLiBUaGUgbWFzdGVyX2dldCgpIGhhcyBkaWZmZXJlbnQK
PiA+ID4gaW1wbGVtZW50YXRpb24gb24gZGlmZmVyZW50IHBsYXRmb3JtcywgdGhhdCB3aHkgaXQg
Y2FsbGVkIGluZGlyZWN0bHkuCj4gPiA+Cj4gPiA+IE9uY2Ugd2UgaGF2ZSBuZXcgcGxhdGZvcm0s
IHdlIG9ubHkgaGF2ZSB0byB1cGRhdGUgZGV2YXBjLW10eHh4eC5jCj4gPiA+IGluc3RlYWQgb2Yg
Y29tbW9uIGhhbmRsZXIgZmxvdy4KPiA+Cj4gPiBZb3UganVzdCB1cHN0cmVhbSBvbmUgU29DIG5v
dywgc28gSSBoYXZlIG5vIGluZm9ybWF0aW9uIG9mIDJuZCBTb0MuCj4gPiBXaXRob3V0IHRoZSAy
bmQgU29DLCBob3cgZG8gd2Uga25vdyB3aGF0IGlzIGNvbW1vbiBhbmQgd2hhdCBpcyBTb0Mgc3Bl
Y2lhbD8KPiA+IFNvIHRoZSBmaXJzdCBwYXRjaCBzaG91bGQgbm90IGNvbnNpZGVyIHRoZSB0aGlu
Z3Mgd2hpY2ggZG9lcyBub3QgZXhpc3QgeWV0Lgo+ID4KPiA+IFJlZ2FyZHMsCj4gPiBDaHVuLUt1
YW5nLgo+ID4KPgo+IEl0IGhhcyBsb3RzIG9mIHJlZmFjdG9yaW5nIHdvcmsgbmVlZCB0byBkbyBp
ZiB5b3UgcmVhbGx5IHdhbnQgbWFrZSBpdAo+ICJzaW1wbGUiLiBDb3VsZCBJIGV4cGxhaW4gbW9y
ZSBkZXRhaWxzIGFuZCBsZXQgeW91IGp1ZGdlIGl0IGlzIHNpbXBsZQo+IGVub3VnaD8KCk1ha2lu
ZyBkcml2ZXIgInNpbXBsZSIgaXMgdmVyeSBpbXBvcnRhbnQsIHNvIGl0IHdvcnRoIHRvIHNwZW5k
IGVmZm9ydAp0byBtYWtlIHRoaW5ncyBzaW1wbGUuIEV2ZXJ5Ym9keSBjb3VsZCBtb2RpZnkgdGhp
cyBkcml2ZXIsIHNvIG1ha2UKdGhpcyBkcml2ZXIgc2ltcGxlIGFuZCBldmVyeWJvZHkgd291bGQg
am9pbiB0aGlzIGVhc2lseS4KCj4gRm9yIG1vc3QgTWVkaWFUZWsgREVWQVBDIGh3LCB0aGUgdmlv
bGF0aW9uIGludGVycnVwdCBoYW5kbGluZyBzZXF1ZW5jZQo+IGlzIHNob3duIGJlbG93Lgo+Cj4g
MS4gRG9tYWluIHByb2Nlc3NvciByZWNlaXZlcyBhIGludGVycnVwdCBpc3N1ZWQgYnkgREVWQVBD
Lgo+IDIuIFNvZnR3YXJlIHJlYWQgdGhlIHZpb2xhdGlvbiBzdGF0dXMgYW5kIGlkZW50aWZ5IGl0
Lgo+IDMuIFNvZnR3YXJlIHJlYWQgdGhlIGRlYnVnIGluZm9ybWF0aW9uIHdoaWNoIGFyZSBzdG9y
ZWQgaW4gaHcgcmVnaXN0ZXIuCj4gICAgICAgICBhLiBkZWJ1ZyBpbmZvcm1hdGlvbiBpbmNsdWRl
cyBtYXN0ZXIgSUQsIGRvbWFpbiBJRCwgdmlvbGF0aW9uCj4gYWRkcmVzcywgLi4uCj4gNC4gVHJh
bnNmZXIgZGVidWcgaW5mb3JtYXRpb24gdG8gaHVtYW4gcmVhZGFibGUgc3RyaW5ncy4KPiA1LiBF
eHRyYSBoYW5kbGVyIHRvIGRpc3BhdGNoIG93bmVyIGRpcmVjdGx5LgoKSSBkb24ndCBrbm93IHdo
eSBuZWVkIGV4dHJhIGhhbmRsZXI/IFdoYXQgZG9lcyB0aGlzIGV4dHJhIGhhbmRsZXIgY291bGQg
ZG8/CklmIGluZGVlZCBuZWVkIGl0LCBzZXBhcmF0ZSBleHRyYSBoYW5kbGVyIHBhcnQgdG8gYW4g
aW5kZXBlbmRlbnQgcGF0Y2guCgo+Cj4gV2hhdCB3ZSByZWFsbHkgY2FyZSBpcyB3aGljaCBtYXN0
ZXIgdmlvbGF0ZXMgdGhlIHJ1bGVzLCBhbmQgd2hpY2ggc2xhdmUKPiBoYWQgYmVlbiBhY2Nlc3Nl
ZCB1bmV4cGVjdGVkbHkuCj4KPiBIZXJlIGFyZSBwbGF0Zm9ybSBzcGVjaWZpYyBpbmZvcm1hdGlv
bjoKPiAxLiBTbGF2ZXMgbGF5b3V0IChwbGF0Zm9ybSBkZXZpY2VzKQo+IDIuIGh3IHJlZ2lzdGVy
IGxheW91dCB3aGljaCBhcmUgc3RvcmVkIHZpb2xhdGlvbiBpbmZvcm1hdGlvbgo+IDMuIE1hc3Rl
ciBJRCBtYXBwaW5nIHRhYmxlCj4gNC4gRG9tYWluIElEIG1hcHBpbmcgdGFibGUKPgo+IEhvcGUg
dGhlc2Ugc3RlcHMgY291bGQgaGVscCB5b3UgdW5kZXJzdGFuZCB3aGF0IGlzIGNvbW1vbiBhbmQg
d2hhdCBpcwo+IFNvQyBzcGVjaWZpYy4gSWYgeW91IHdhbnQgdG8gc2VlIHRoZSAybmQgU29DJ3Mg
ZHJpdmVyLCBJIGNhbiBhbHNvIHNlbmQKPiBpdCBmb3IgeW91IHRvIHRha2UgYSBsb29rLgoKUGxl
YXNlIHVwc3RyZWFtIDJuZCBTb0MncyBkcml2ZXIsIHNvIEkgY291bGQgcmV2aWV3IGNvbW1vbiBw
YXJ0IGFuZApTb0Mgc3BlY2lmaWMgcGFydC4KClJlZ2FyZHMsCkNodW4tS3VhbmcuCgo+Cj4gVGhh
bmtzLAo+IE5lYWwKPgo+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAg
ICAgICAgICAgaWYgKCF2aW9fbWFzdGVyKSB7Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBwcl93YXJuKFBGWCAibWFzdGVyX2dldCBmYWlsZWRcbiIpOwo+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgdmlvX21hc3RlciA9ICJVTktOT1dOX01BU1RFUiI7Cj4gPiA+ID4g
PiArICAgICAgICAgICAgICAgfQo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
IHByX2luZm8oUEZYICIlcyAtICVzOjB4JXgsICVzOjB4JXgsICVzOjB4JXgsICVzOjB4JXhcbiIs
Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAiVmlvbGF0aW9uIiwgInNsYXZlX3R5
cGUiLCBzbGF2ZV90eXBlLAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgInN5c19p
bmRleCIsCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBkZXZpY2VfaW5mb1tzbGF2
ZV90eXBlXVtpbmRleF0uc3lzX2luZGV4LAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgImN0cmxfaW5kZXgiLAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2aWNl
X2luZm9bc2xhdmVfdHlwZV1baW5kZXhdLmN0cmxfaW5kZXgsCj4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAidmlvX2luZGV4IiwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGRldmljZV9pbmZvW3NsYXZlX3R5cGVdW2luZGV4XS52aW9faW5kZXgpOwo+ID4gPiA+ID4g
Kwo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHByX2luZm8oUEZYICIlcyAlcyAlcyAlc1xuIiwK
PiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICJWaW9sYXRpb24gLSBtYXN0ZXI6Iiwg
dmlvX21hc3RlciwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICJhY2Nlc3Mgdmlv
bGF0aW9uIHNsYXZlOiIsCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBkZXZpY2Vf
aW5mb1tzbGF2ZV90eXBlXVtpbmRleF0uZGV2aWNlKTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgICBkZXZhcGNfdmlvX3JlYXNvbihwZXJtKTsKPiA+ID4gPiA+ICsKPiA+ID4g
PiA+ICsgICAgICAgICAgICAgICBkZXZhcGNfZXh0cmFfaGFuZGxlcihzbGF2ZV90eXBlLCB2aW9f
bWFzdGVyLCB2aW9faWR4LAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHZpb19pbmZvLT52aW9fYWRkcik7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAg
ICAgICAgICAgbWFza19tb2R1bGVfaXJxKHNsYXZlX3R5cGUsIHZpb19pZHgsIGZhbHNlKTsKPiA+
ID4gPiA+ICsgICAgICAgfQo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICBpZiAobm9ybWFs
KSB7Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2
YXBjX2xvY2ssIGZsYWdzKTsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gSVJRX0hB
TkRMRUQ7Cj4gPiA+ID4gPiArICAgICAgIH0KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgICAg
c3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2YXBjX2xvY2ssIGZsYWdzKTsKPiA+ID4gPiA+ICsg
ICAgICAgcmV0dXJuIElSUV9IQU5ETEVEOwo+ID4gPiA+ID4gK30KPiA+ID4gPiA+ICsKPiA+ID4K
PiA+ID4gW3NuaXBdCj4gPiA+Cj4gPiA+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
