Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C83DFEEC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tShVOvLo4BiHvEJWR1BnuyvU87oXWXvSDCYRqWwrpGY=; b=i4I2LEsJqCTt+0
	RU9D0QwLboavcPByM4u5QV4GQWbM+4v8lx1fXBfOYzlVcbG3j99tSFW8/bLRjXSAuSRMS7+91ZsXH
	t1TJ8LvShjTu/MeCXsFsdckiDROOw9wZiN4qELA5SDHny6EQPJvL3+ldHw1w82lZIEVnF0k5psBW9
	073yHo0WP3qZGX17E/KpdB0n2mWwO/zTgEwPZ5QZ61v58eihoB3fST4WN6ZieIK5badfqHY38rLUd
	+hdknBx8Lj9tuhqCatn4sfuJpkRBHDlrbpjeCiplRcAG+hyvml+W+mMKPOWwbYlHYGiyf+CfnMibF
	wjfwovl7vmnMbkzdpT4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMp93-0003kU-S1; Tue, 22 Oct 2019 08:03:57 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMp8u-0003iy-Ob
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:03:50 +0000
Received: by mail-oi1-f195.google.com with SMTP id k25so13363598oiw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 01:03:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FZ5NqMFCYGmllIJPScGfDyvZnsZelaNfZGPfOky3arY=;
 b=bvaN9L2yvAy5MSGekAzAeQ2YWfiv107orVAIwy354IudbSzM1767KUnfXVtaFA3GYx
 McJiJWMO9pAwsCLGF3rVRnHPfVAu/SUh8yuvkyqLraJv2CshwoUbpOcq5CrcwXDLWjbJ
 bjGXCsDBel/T29MrbhlcAk+TkFJ2P7EksMoq8qBUiyeN9/IhyJmrVbzV4o0yV1wbn2+q
 VIhbv0hfYJnclmV+0KLIg/cDDb40p0Ntd6fLQn51NXs2GhETRRbtWRpb4XGWn20Wf7wE
 4CIvv+qaJc0zbhPbAKui/me1svQRxBNsHQaXS0qZjKx93f+p5vrwzY5znpdAhfD0xLyN
 GquQ==
X-Gm-Message-State: APjAAAUMJ5SXNK+DZubeDKnGsfq4PyAWhiMI8iakyrYK9bFdAcyhUBJl
 wzlwx42qYognG0ltqN3I/0YIpIke/8GF8r3QohQ=
X-Google-Smtp-Source: APXvYqzUG4qN2828x+balZ7XQHkCN61tn83nKFfVm4V+67gV79RTLeG4Xc/VY2KvLVqNFsT/NQt7RB7hJSVhMG7O6So=
X-Received: by 2002:a05:6808:3b4:: with SMTP id
 n20mr1733802oie.131.1571731427705; 
 Tue, 22 Oct 2019 01:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191021143742.14487-1-geert+renesas@glider.be>
 <20191021143742.14487-2-geert+renesas@glider.be>
 <0f91839d858fcb03435ebc85e61ee4e75371ff37.camel@perches.com>
In-Reply-To: <0f91839d858fcb03435ebc85e61ee4e75371ff37.camel@perches.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 22 Oct 2019 10:03:36 +0200
Message-ID: <CAMuHMdU4OhsK6Jvy406ZCM+OeGcfVB0b7ccsne9KdMZFLf=JqQ@mail.gmail.com>
Subject: Re: [PATCH 1/7] debugfs: Add debugfs_create_xul() for hexadecimal
 unsigned long
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_010348_804412_8429F933 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 netdev <netdev@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9lLAoKT24gTW9uLCBPY3QgMjEsIDIwMTkgYXQgNTozNyBQTSBKb2UgUGVyY2hlcyA8am9l
QHBlcmNoZXMuY29tPiB3cm90ZToKPiBPbiBNb24sIDIwMTktMTAtMjEgYXQgMTY6MzcgKzAyMDAs
IEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+IFRoZSBleGlzdGluZyBkZWJ1Z2ZzX2NyZWF0
ZV91bG9uZygpIGZ1bmN0aW9uIHN1cHBvcnRzIG9iamVjdHMgb2YKPiA+IHR5cGUgInVuc2lnbmVk
IGxvbmciLCB3aGljaCBhcmUgMzItYml0IG9yIDY0LWJpdCBkZXBlbmRpbmcgb24gdGhlCj4gPiBw
bGF0Zm9ybSwgaW4gZGVjaW1hbCBmb3JtLiAgVG8gZm9ybWF0IG9iamVjdHMgaW4gaGV4YWRlY2lt
YWwsIHZhcmlvdXMKPiA+IGRlYnVnZnNfY3JlYXRlX3gqKCkgZnVuY3Rpb25zIGV4aXN0LCBidXQg
YWxsIG9mIHRoZW0gdGFrZSBmaXhlZC1zaXplCj4gPiB0eXBlcy4KPiA+Cj4gPiBBZGQgYSBkZWJ1
Z2ZzIGhlbHBlciBmb3IgInVuc2lnbmVkIGxvbmciIG9iamVjdHMgaW4gaGV4YWRlY2ltYWwgZm9y
bWF0Lgo+ID4gVGhpcyBhdm9pZHMgdGhlIG5lZWQgZm9yIHVzZXJzIHRvIG9wZW4tY29kZSB0aGUg
c2FtZSwgb3IgaW50cm9kdWNlCj4gPiBidWdzIHdoZW4gY2FzdGluZyB0aGUgdmFsdWUgcG9pbnRl
ciB0byAidTMyICoiIG9yICJ1NjQgKiIgdG8gY2FsbAo+ID4gZGVidWdmc19jcmVhdGVfeHszMiw2
NH0oKS4KPiBbXQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZGVidWdmcy5oIGIvaW5j
bHVkZS9saW51eC9kZWJ1Z2ZzLmgKPiBbXQo+ID4gQEAgLTM1Niw0ICszNTYsMTQgQEAgc3RhdGlj
IGlubGluZSBzc2l6ZV90IGRlYnVnZnNfd3JpdGVfZmlsZV9ib29sKHN0cnVjdCBmaWxlICpmaWxl
LAo+ID4KPiA+ICAjZW5kaWYKPiA+Cj4gPiArc3RhdGljIGlubGluZSB2b2lkIGRlYnVnZnNfY3Jl
YXRlX3h1bChjb25zdCBjaGFyICpuYW1lLCB1bW9kZV90IG1vZGUsCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZGVudHJ5ICpwYXJlbnQsCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nICp2YWx1ZSkKPiA+ICt7
Cj4gPiArICAgICBpZiAoc2l6ZW9mKCp2YWx1ZSkgPT0gc2l6ZW9mKHUzMikpCj4gPiArICAgICAg
ICAgICAgIGRlYnVnZnNfY3JlYXRlX3gzMihuYW1lLCBtb2RlLCBwYXJlbnQsICh1MzIgKil2YWx1
ZSk7Cj4gPiArICAgICBlbHNlCj4gPiArICAgICAgICAgICAgIGRlYnVnZnNfY3JlYXRlX3g2NChu
YW1lLCBtb2RlLCBwYXJlbnQsICh1NjQgKil2YWx1ZSk7Cj4KPiB0cml2aWE6IHRoZSBjYXN0cyBh
cmUgdW5uZWNlc3NhcnkuCgpUaGV5IGFyZSBuZWNlc3NhcnksIGluIGJvdGggY2FsbHMgKHNvIHVz
aW5nICNpZmRlZiBhcyBzdWdnZXN0ZWQgYmVsb3cKd29uJ3QgaGVscCk6CgogICAgaW5jbHVkZS9s
aW51eC9kZWJ1Z2ZzLmg6Mzc1OjQyOiBlcnJvcjogcGFzc2luZyBhcmd1bWVudCA0IG9mCuKAmGRl
YnVnZnNfY3JlYXRlX3gzMuKAmSBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUKWy1XZXJy
b3I9aW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdCiAgICAgICBkZWJ1Z2ZzX2NyZWF0ZV94MzIo
bmFtZSwgbW9kZSwgcGFyZW50LCB2YWx1ZSk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBefn5+fgogICAgaW5jbHVkZS9saW51eC9kZWJ1Z2ZzLmg6MTE0OjY6
IG5vdGU6IGV4cGVjdGVkIOKAmHUzMiAqIHtha2EgdW5zaWduZWQKaW50ICp94oCZIGJ1dCBhcmd1
bWVudCBpcyBvZiB0eXBlIOKAmGxvbmcgdW5zaWduZWQgaW50ICrigJkKICAgICB2b2lkIGRlYnVn
ZnNfY3JlYXRlX3gzMihjb25zdCBjaGFyICpuYW1lLCB1bW9kZV90IG1vZGUsIHN0cnVjdApkZW50
cnkgKnBhcmVudCwKICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgogICAgaW5jbHVkZS9saW51
eC9kZWJ1Z2ZzLmg6Mzc3OjQyOiBlcnJvcjogcGFzc2luZyBhcmd1bWVudCA0IG9mCuKAmGRlYnVn
ZnNfY3JlYXRlX3g2NOKAmSBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUKWy1XZXJyb3I9
aW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdCiAgICAgICBkZWJ1Z2ZzX2NyZWF0ZV94NjQobmFt
ZSwgbW9kZSwgcGFyZW50LCB2YWx1ZSk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBefn5+fgogICAgaW5jbHVkZS9saW51eC9kZWJ1Z2ZzLmg6MTE2OjY6IG5v
dGU6IGV4cGVjdGVkIOKAmHU2NCAqIHtha2EgbG9uZwpsb25nIHVuc2lnbmVkIGludCAqfeKAmSBi
dXQgYXJndW1lbnQgaXMgb2YgdHlwZSDigJhsb25nIHVuc2lnbmVkIGludCAq4oCZCiAgICAgdm9p
ZCBkZWJ1Z2ZzX2NyZWF0ZV94NjQoY29uc3QgY2hhciAqbmFtZSwgdW1vZGVfdCBtb2RlLCBzdHJ1
Y3QKZGVudHJ5ICpwYXJlbnQsCiAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn4KCj4gVGhpcyBt
aWdodCBiZSBtb3JlIHNlbnNpYmxlIHVzaW5nICNpZmRlZgo+Cj4gc3RhdGljIGlubGluZSB2b2lk
IGRlYnVnZnNfY3JlYXRlX3h1bChjb25zdCBjaGFyICpuYW1lLCB1bW9kZV90IG1vZGUsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZGVudHJ5ICpwYXJlbnQs
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nICp2
YWx1ZSkKPiB7Cj4gI2lmIEJJVFNfUEVSX0xPTkcgPT0gNjQKPiAgICAgICAgIGRlYnVnZnNfY3Jl
YXRlX3g2NChuYW1lLCBtb2RlLCBwYXJlbnQsIHZhbHVlKTsKPiAjZWxzZQo+ICAgICAgICAgZGVi
dWdmc19jcmVhdGVfeDMyKG5hbWUsIG1vZGUsIHBhcmVudCwgdmFsdWUpOwo+ICNlbmRpZgo+IH0K
Ci4uLiBhdCB0aGUgZXhwZW5zZSBvZiB0aGUgY29tcGlsZXIgY2hlY2tpbmcgb25seSBvbmUgYnJh
bmNoLgoKSnVzdCBsaWtlICJpZiAoSVNfRU5BQkxFRChDT05GSUdfPGZvbz4pIiAod2hlbiBwb3Nz
aWJsZSkgaXMgcHJlZmVycmVkCm92ZXIgIiNpZmRlZiBDT05GSUdfPGZvbz4iIGJlY2F1c2Ugb2Yg
Y29tcGlsZS1jb3ZlcmFnZSwgSSB0aGluayB1c2luZwoiaWYiIGhlcmUgaXMgYmV0dGVyIHRoYW4g
dXNpbmcgIiNpZiIuCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAg
IEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBi
ZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0
aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3
aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9y
IHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0g
TGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
