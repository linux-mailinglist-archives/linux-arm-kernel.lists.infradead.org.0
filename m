Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590231F865D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 05:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bWuElpfxrrBPkCGPYZtbTtmSzXyKjWOibFPajHWT4M=; b=m2/UOY0TbdO/Q8
	ojOGe1BHh40Uaa0mmAx1R6yGj73pnmzmqksdMLlgWwKS9yMzSRzvMYWZJhhF628e5VGUTfw6q+SJX
	9etlGdkCuF/o7b06YGjwBgOiqi4ZIYwcEJYA6nVJY+hwQigNOywr5F7wkhRv/Ja95/S6V13BMjlmf
	bgv89sgZt9cw55UqMQa4pu+1ERxPkh1LaKrvVajFNztYZDY+eoRHtYEAiZNLZqglCfK59fwG+GG1X
	1fmDLywGScg7Xk9ZwVMCvgg/yMN0eIRQtKyY56PDR4BrujBU5cxcskarhWCkCJrUSQ0QoGpXdUAqj
	e8P7CXYUWgaF5GHR4tFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkJID-00078s-CN; Sun, 14 Jun 2020 03:26:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkJI4-00078Q-LQ; Sun, 14 Jun 2020 03:26:38 +0000
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5809D2080D;
 Sun, 14 Jun 2020 03:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592105194;
 bh=qvlEooqb/QRVp+lH3E3ELUViJHiT65J+THRseprWAaA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eon4nXGoInfcbJ2DApkv30ONI4y4tgc3ZVBLeJJML95S9RcnB4CcVgCsDPZsiO5Xr
 noJ8CfgAeox5VQ+EtJ4FKFzDc5fX9tTir0Lpl+5YOo6DQruoPTYkBScuUHbGNxM0j9
 uRgY3SvxlXhN8E5VDYbK9NfGn5tzzEz4C170TxnA=
Received: by mail-ej1-f48.google.com with SMTP id o15so13876730ejm.12;
 Sat, 13 Jun 2020 20:26:34 -0700 (PDT)
X-Gm-Message-State: AOAM531q0MriRIAxDQupCjEnNEfmSuF2H9N9azlVbXin5Z0Y0v0NzfUJ
 ErdNVcNu45QFOfvKKY7nxz3Qh7Rt8cf3dBPIWw==
X-Google-Smtp-Source: ABdhPJygZ7+s9E2uvJLRmzF/ZlQdQNkUgdnyD0VfMuR6Y68ATgx7MtpXGPqODUSOl8hq5eaKX9phvJjtfPuGGjD6oXA=
X-Received: by 2002:a17:906:7696:: with SMTP id
 o22mr19140394ejm.245.1592105192907; 
 Sat, 13 Jun 2020 20:26:32 -0700 (PDT)
MIME-Version: 1.0
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
In-Reply-To: <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 14 Jun 2020 11:26:21 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8W7FLrjKbNt+WHXjsBzgn_E7n5stKjv94RBnF7ktVuiA@mail.gmail.com>
Message-ID: <CAAOTY_8W7FLrjKbNt+WHXjsBzgn_E7n5stKjv94RBnF7ktVuiA@mail.gmail.com>
Subject: Re: [PATCH 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_202636_743595_397B73BD 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, wsd_upstream <wsd_upstream@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIE5lYWw6CgpOZWFsIExpdSA8bmVhbC5saXVAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5tDbm
nIg55pelIOmAseS6jCDkuIvljYg2OjI15a+r6YGT77yaCj4KPiBNVDY4NzMgYnVzIGZyYWJyaWMg
cHJvdmlkZXMgVHJ1c3Rab25lIHNlY3VyaXR5IHN1cHBvcnQgYW5kIGRhdGEKPiBwcm90ZWN0aW9u
IHRvIHByZXZlbnQgc2xhdmVzIGZyb20gYmVpbmcgYWNjZXNzZWQgYnkgdW5leHBlY3RlZAo+IG1h
c3RlcnMuCj4gVGhlIHNlY3VyaXR5IHZpb2xhdGlvbnMgYXJlIGxvZ2dlZCBhbmQgc2VudCB0byB0
aGUgcHJvY2Vzc29yIGZvcgo+IGZ1cnRoZXIgYW5hbHlzaXMgb3IgY291bnRlcm1lYXN1cmVzLgo+
Cj4gQW55IG9jY3VycmVuY2Ugb2Ygc2VjdXJpdHkgdmlvbGF0aW9uIHdvdWxkIHJhaXNlIGFuIGlu
dGVycnVwdCwgYW5kCj4gaXQgd2lsbCBiZSBoYW5kbGVkIGJ5IGRldmFwYy1tdDY4NzMgZHJpdmVy
LiBUaGUgdmlvbGF0aW9uCj4gaW5mb3JtYXRpb24gaXMgcHJpbnRlZCBpbiBvcmRlciB0byBmaW5k
IHRoZSBtdXJkZXJlci4KPgo+IFNpZ25lZC1vZmYtYnk6IE5lYWwgTGl1IDxuZWFsLmxpdUBtZWRp
YXRlay5jb20+Cj4gLS0tCgpbc25pcF0KCj4gKwo+ICsgICAgICAgLyogNTAgKi8KPiArICAgICAg
IHstMSwgLTEsIDUwLCAiT09CX3dheV9lbiIsIHRydWV9LAo+ICsgICAgICAgey0xLCAtMSwgNTEs
ICJPT0Jfd2F5X2VuIiwgdHJ1ZX0sCj4gKyAgICAgICB7LTEsIC0xLCA1MiwgIk9PQl93YXlfZW4i
LCB0cnVlfSwKPiArICAgICAgIHstMSwgLTEsIDUzLCAiT09CX3dheV9lbiIsIHRydWV9LAo+ICsg
ICAgICAgey0xLCAtMSwgNTQsICJPT0Jfd2F5X2VuIiwgdHJ1ZX0sCj4gKyAgICAgICB7LTEsIC0x
LCA1NSwgIk9PQl93YXlfZW4iLCB0cnVlfSwKPiArICAgICAgIHstMSwgLTEsIDU2LCAiRGVjb2Rl
X2Vycm9yIiwgdHJ1ZX0sCj4gKyAgICAgICB7LTEsIC0xLCA1NywgIkRlY29kZV9lcnJvciIsIHRy
dWV9LAo+ICsgICAgICAgey0xLCAtMSwgNTgsICJESVNQX1BXTSIsIGZhbHNlfSwKPiArICAgICAg
IHstMSwgLTEsIDU5LCAiSU1QX0lJQ19XUkFQIiwgZmFsc2V9LAo+ICsKPiArICAgICAgIC8qIDYw
ICovCj4gKyAgICAgICB7LTEsIC0xLCA2MCwgIkRFVklDRV9BUENfUEVSSV9QQVJfX0FPIiwgZmFs
c2V9LAo+ICsgICAgICAgey0xLCAtMSwgNjEsICJERVZJQ0VfQVBDX1BFUklfUEFSX1BETiIsIGZh
bHNlfSwKCllvdSBkb2VzIG5vdCBwcm9jZXNzIHRoZSBpdGVtIHdob3NlIGVuYWJsZV92aW9faXJx
IGlzIGZhbHNlLCBzbyBJCnRoaW5rIHlvdSBzaG91bGQgcmVtb3ZlIHRoZXNlIGl0ZW1zIGFuZCBy
ZW1vdmUgZW5hYmxlX3Zpb19pcnEgYmVjYXVzZQp0aGUgcmVzdCBpdGVtJ3MgZW5hYmxlX3Zpb19p
cnEgd291bGQgYWx3YXlzIGJlIHRydWUuCgo+ICt9Owo+ICsKPiArc3RhdGljIHN0cnVjdCBtdGtf
ZGV2aWNlX251bSBtdGs2ODczX2RldmljZXNfbnVtW10gPSB7Cj4gKyAgICAgICB7U0xBVkVfVFlQ
RV9JTkZSQSwgVklPX1NMQVZFX05VTV9JTkZSQX0sCj4gKyAgICAgICB7U0xBVkVfVFlQRV9QRVJJ
LCBWSU9fU0xBVkVfTlVNX1BFUkl9LAo+ICsgICAgICAge1NMQVZFX1RZUEVfUEVSSTIsIFZJT19T
TEFWRV9OVU1fUEVSSTJ9LAo+ICsgICAgICAge1NMQVZFX1RZUEVfUEVSSV9QQVIsIFZJT19TTEFW
RV9OVU1fUEVSSV9QQVJ9LAo+ICt9Owo+ICsKPiArc3RhdGljIHN0cnVjdCBQRVJJQVhJX0lEX0lO
Rk8gcGVyaV9taV9pZF90b19tYXN0ZXJbXSA9IHsKPiArICAgICAgIHsiVEhFUk0yIiwgICAgICAg
eyAwLCAwLCAwIH0gfSwKPiArICAgICAgIHsiU1BNIiwgICAgICAgICAgeyAwLCAxLCAwIH0gfSwK
PiArICAgICAgIHsiQ0NVIiwgICAgICAgICAgeyAwLCAwLCAxIH0gfSwKPiArICAgICAgIHsiVEhF
Uk0iLCAgICAgICAgeyAwLCAxLCAxIH0gfSwKPiArICAgICAgIHsiU1BNX0RSQU1DIiwgICAgeyAx
LCAxLCAwIH0gfSwKClRoZSBiaXRzIHsgMSwgMSwgMCB9IGVxdWFsIHRvIGEgbnVtYmVyIDB4Mywg
SSB0aGlpbmsgeW91IHNob3VsZCB1c2UgYQpudW1iZXIgaW5zdGVhZCBvZiBiaXRzIGFuZCBldmVy
eXRoaW5nIHdvdWxkIGJlIG1vcmUgZWFzeS4KCj4gK307Cj4gKwoKW3NuaXBdCgo+ICsKPiArLyoK
PiArICogbXRrX2RldmFwY192aW9fY2hlY2sgLSBjaGVjayB2aW9sYXRpb24gc2hpZnQgc3RhdHVz
IGlzIHJhaXNlZCBvciBub3QuCj4gKyAqCj4gKyAqIFJldHVybnMgdGhlIHZhbHVlIG9mIHZpb2xh
dGlvbiBzaGlmdCBzdGF0dXMgcmVnCj4gKyAqLwo+ICtzdGF0aWMgdm9pZCBtdGtfZGV2YXBjX3Zp
b19jaGVjayhpbnQgc2xhdmVfdHlwZSwgaW50ICpzaGlmdF9iaXQpCj4gK3sKPiArICAgICAgIHUz
MiBzbGF2ZV90eXBlX251bSA9IG10a19kZXZhcGNfY3R4LT5zb2MtPnNsYXZlX3R5cGVfbnVtOwo+
ICsgICAgICAgc3RydWN0IG10a19kZXZhcGNfdmlvX2luZm8gKnZpb19pbmZvOwo+ICsgICAgICAg
dTMyIHZpb19zaGlmdF9zdGE7Cj4gKyAgICAgICBpbnQgaTsKPiArCj4gKyAgICAgICBpZiAoc2xh
dmVfdHlwZSA+PSBzbGF2ZV90eXBlX251bSkgewoKVGhpcyBuZXZlciBoYXBwZW4sIHNvIHJlbW92
ZSBpdC4KCj4gKyAgICAgICAgICAgICAgIHByX2VycihQRlggIiVzOiBwYXJhbSBjaGVjayBmYWls
ZWQsICVzOjB4JXhcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICBfX2Z1bmNfXywgInNsYXZl
X3R5cGUiLCBzbGF2ZV90eXBlKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsgICAgICAg
fQo+ICsKPiArICAgICAgIHZpb19pbmZvID0gbXRrX2RldmFwY19jdHgtPnNvYy0+dmlvX2luZm87
Cj4gKyAgICAgICB2aW9fc2hpZnRfc3RhID0gcmVhZGwobXRrX2RldmFwY19wZF9nZXQoc2xhdmVf
dHlwZSwgVklPX1NISUZUX1NUQSwgMCkpOwo+ICsKPiArICAgICAgIGlmICghdmlvX3NoaWZ0X3N0
YSkgewo+ICsgICAgICAgICAgICAgICBwcl9pbmZvKFBGWCAidmlvbGF0aW9uIGlzIHRyaWdnZXJl
ZCBiZWZvcmUuICVzOjB4JXhcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgInNoaWZ0X2Jp
dCIsICpzaGlmdF9iaXQpOwo+ICsKPiArICAgICAgIH0gZWxzZSBpZiAodmlvX3NoaWZ0X3N0YSAm
ICgweDFVTCA8PCAqc2hpZnRfYml0KSkgewo+ICsgICAgICAgICAgICAgICBwcl9kZWJ1ZyhQRlgg
IiVzOiAweCV4IGlzIG1hdGNoZWQgd2l0aCAlczolZFxuIiwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgInZpb19zaGlmdF9zdGEiLCB2aW9fc2hpZnRfc3RhLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAic2hpZnRfYml0IiwgKnNoaWZ0X2JpdCk7Cj4gKwo+ICsgICAgICAgfSBlbHNlIHsK
PiArICAgICAgICAgICAgICAgcHJfaW5mbyhQRlggIiVzOiAweCV4IGlzIG5vdCBtYXRjaGVkIHdp
dGggJXM6JWRcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgInZpb19zaGlmdF9zdGEiLCB2
aW9fc2hpZnRfc3RhLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICJzaGlmdF9iaXQiLCAqc2hp
ZnRfYml0KTsKPiArCj4gKyAgICAgICAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBNT0RfTk9fSU5f
MV9ERVZBUEMgKiAyOyBpKyspIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAodmlvX3No
aWZ0X3N0YSAmICgweDEgPDwgaSkpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICpzaGlmdF9iaXQgPSBpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfQo+ICsgICAgICAgICAgICAgICB9Cj4gKyAgICAg
ICB9Cj4gKwo+ICsgICAgICAgdmlvX2luZm8tPnNoaWZ0X3N0YV9iaXQgPSAqc2hpZnRfYml0Owo+
ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBkZXZhcGNfZXh0cmFjdF92aW9fZGJnKGludCBzbGF2ZV90
eXBlKQo+ICt7Cj4gKyAgICAgICB1MzIgc2xhdmVfdHlwZV9udW0gPSBtdGtfZGV2YXBjX2N0eC0+
c29jLT5zbGF2ZV90eXBlX251bTsKPiArICAgICAgIHZvaWQgX19pb21lbSAqdmlvX2RiZzBfcmVn
LCAqdmlvX2RiZzFfcmVnLCAqdmlvX2RiZzJfcmVnOwo+ICsgICAgICAgY29uc3Qgc3RydWN0IG10
a19pbmZyYV92aW9fZGJnX2Rlc2MgKnZpb19kYmdzOwo+ICsgICAgICAgc3RydWN0IG10a19kZXZh
cGNfdmlvX2luZm8gKnZpb19pbmZvOwo+ICsgICAgICAgdTMyIGRiZzA7Cj4gKwo+ICsgICAgICAg
aWYgKHNsYXZlX3R5cGUgPj0gc2xhdmVfdHlwZV9udW0pIHsKCkRpdHRvLgoKUmVnYXJkcywKQ2h1
bi1LdWFuZy4KCj4gKyAgICAgICAgICAgICAgIHByX2VycihQRlggIiVzOiBwYXJhbSBjaGVjayBm
YWlsZWQsICVzOjB4JXhcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICBfX2Z1bmNfXywgInNs
YXZlX3R5cGUiLCBzbGF2ZV90eXBlKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsgICAg
ICAgfQo+ICsKPiArICAgICAgIHZpb19kYmcwX3JlZyA9IG10a19kZXZhcGNfcGRfZ2V0KHNsYXZl
X3R5cGUsIFZJT19EQkcwLCAwKTsKPiArICAgICAgIHZpb19kYmcxX3JlZyA9IG10a19kZXZhcGNf
cGRfZ2V0KHNsYXZlX3R5cGUsIFZJT19EQkcxLCAwKTsKPiArICAgICAgIHZpb19kYmcyX3JlZyA9
IG10a19kZXZhcGNfcGRfZ2V0KHNsYXZlX3R5cGUsIFZJT19EQkcyLCAwKTsKPiArCj4gKyAgICAg
ICB2aW9fZGJncyA9IG10a19kZXZhcGNfY3R4LT5zb2MtPnZpb19kYmdzOwo+ICsgICAgICAgdmlv
X2luZm8gPSBtdGtfZGV2YXBjX2N0eC0+c29jLT52aW9faW5mbzsKPiArCj4gKyAgICAgICAvKiBF
eHRyYWN0IHZpb2xhdGlvbiBpbmZvcm1hdGlvbiAqLwo+ICsgICAgICAgZGJnMCA9IHJlYWRsKHZp
b19kYmcwX3JlZyk7Cj4gKyAgICAgICB2aW9faW5mby0+bWFzdGVyX2lkID0gcmVhZGwodmlvX2Ri
ZzFfcmVnKTsKPiArICAgICAgIHZpb19pbmZvLT52aW9fYWRkciA9IHJlYWRsKHZpb19kYmcyX3Jl
Zyk7Cj4gKwo+ICsgICAgICAgdmlvX2luZm8tPmRvbWFpbl9pZCA9IChkYmcwICYgdmlvX2RiZ3Mt
PnZpb19kYmdfZG1uaWQpCj4gKyAgICAgICAgICAgICAgID4+IHZpb19kYmdzLT52aW9fZGJnX2Rt
bmlkX3N0YXJ0X2JpdDsKPiArICAgICAgIHZpb19pbmZvLT53cml0ZSA9ICgoZGJnMCAmIHZpb19k
YmdzLT52aW9fZGJnX3dfdmlvKQo+ICsgICAgICAgICAgICAgICAgICAgICAgID4+IHZpb19kYmdz
LT52aW9fZGJnX3dfdmlvX3N0YXJ0X2JpdCkgPT0gMTsKPiArICAgICAgIHZpb19pbmZvLT5yZWFk
ID0gKChkYmcwICYgdmlvX2RiZ3MtPnZpb19kYmdfcl92aW8pCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgPj4gdmlvX2RiZ3MtPnZpb19kYmdfcl92aW9fc3RhcnRfYml0KSA9PSAxOwo+ICsgICAg
ICAgdmlvX2luZm8tPnZpb19hZGRyX2hpZ2ggPSAoZGJnMCAmIHZpb19kYmdzLT52aW9fYWRkcl9o
aWdoKQo+ICsgICAgICAgICAgICAgICA+PiB2aW9fZGJncy0+dmlvX2FkZHJfaGlnaF9zdGFydF9i
aXQ7Cj4gKwo+ICsgICAgICAgZGV2YXBjX3Zpb19pbmZvX3ByaW50KCk7Cj4gK30KPiArCj4gKy8q
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
