Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E255B6FC05
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrQDuF34FmeXQ5ZitsodMMPV0RSdH9NR1cYya6wopaQ=; b=BLkieTML32s2Si
	TREazkMx9u+E7QCe6KY2NpaZBjAbCA+wvc+a5aQGCpZLDK2Ugb87B8AwKE/BGMzSmZOqcrIkuDk9/
	M5S4jrpIFf9DkCcRR46qzWWPh4WDoFLQUhAD2El68l01v46GGVXSXPW4CyyjnklZ4YYBPXWLYBu1H
	om7kotRdVbY7K0CEx/shYWoPH2NVBIof8ZSflsrpnhRkx2zMggb0KonHK7oBVMoVQmDsdZudTPu3I
	TfPEwcYrEJlK5jOH2UkIakPHH8mbPyPdAJ9f0LhlLEQzJTQXKbKUy1+zidu44l3hUM08XUqYIB0iy
	+dP9bAXw8rCJPSuSH+hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUUe-0001Yl-8i; Mon, 22 Jul 2019 09:20:28 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUUJ-0000hH-LG
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:20:09 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so26060564lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=plSsouCihSrvy+XJa8kqnNsfu5JW0L2stXgngIJDoK0=;
 b=sklfs8oF8tk6iN3uIdr1jYUBE9kDukXheMXJRC57/Y1adkZlvN2FpLXKew0/EI6H94
 RLyP/IUj0Dn7ij2jJ63bul8eARR0Hjj+993oAX4AU15bchmgOyKnrtPHOtKjUlByiGJL
 86Trch8pUCwfWVL752ApcCJTYsu1zkecccgcbyBM7jdZ6otwSMQWOgl0uiirk7pukqHi
 Ah1z68llsYFPR+8JF/TzPMaDxz1PwJ44QreM05/8/GAdPZ9qFIjS4YbH45LwCcRCGA1i
 jbqAJv1/yhpXlcy1M3/JqUm6Vm8wE4Q6srq//+faxBBk2GiSUkIFwkyQr4y9vRriH72u
 jpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=plSsouCihSrvy+XJa8kqnNsfu5JW0L2stXgngIJDoK0=;
 b=mW/8fV9UDmccI00JtPoKiJIxCAUX80rj9sLzn5TYJnd6yJ3tQprX3kEMatElBP5mRx
 JMlrBhGGWCp3YyZev75Mz3Wf2ciOzzj9VnQ0ZDjmi0qCWRXr+jArsQ14is4vBomt2VZi
 3fIuwze+qIW/gWpa4aPpuSH+kTLZHi916d1tMKYpFB/pi0i+vMge9/G1Ciz7SJM8DtaV
 0xJUbIZS4dnYVRTZCi5NdtmJKib1Cm9srSuavrvo6cq5PCjXdK8QFiJgkijWXMLUhXd7
 nz8tcuhsqXvvIo2DR8cfL8icgwcgZIVwGlkMiynZGsF7G5Rs3/xo3ku1g6zh/3gBHFYb
 YMPA==
X-Gm-Message-State: APjAAAUsQamlzsOLes1VnKc5iA/6CrWT7ct1Uw0f+TjGGa8PW4ht/VH/
 nGSvbkqBptjScnrsMUVBuggkF4GZ
X-Google-Smtp-Source: APXvYqwJvKdtPe2MH65q+nOk5fdMIx3fYwg3dB22Jp061jGCK6qNBZZHQuhpeVMCzKDTl+VqZLb43w==
X-Received: by 2002:a19:9104:: with SMTP id t4mr11400657lfd.179.1563787203856; 
 Mon, 22 Jul 2019 02:20:03 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id h4sm7483579ljj.31.2019.07.22.02.20.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 02:20:03 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v4 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
 <1563526074-20399-2-git-send-email-sorganov@gmail.com>
 <20190719091143.uhjxeibtolgswq2l@pengutronix.de>
 <87h87idxq2.fsf@osv.gnss.ru>
 <20190719143151.gx43ndn2oy35h247@pengutronix.de>
 <87woge9hvz.fsf@osv.gnss.ru>
 <20190719201949.ldqlcwjhcmt7wwhg@pengutronix.de>
 <87ftmy8qgu.fsf@osv.gnss.ru>
 <20190722075107.cc3tvf6gmxhaeh5m@pengutronix.de>
Date: Mon, 22 Jul 2019 12:20:02 +0300
In-Reply-To: <20190722075107.cc3tvf6gmxhaeh5m@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Mon,
 22 Jul 2019 09:51:07 +0200")
Message-ID: <87lfwq77el.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_022007_718658_276F6106 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAxMDo0Mjo1N0FNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4gd3JpdGVzOgo+PiAKPj4gPiBPbiBGcmksIEp1bCAxOSwgMjAxOSBhdCAwNjoxMzo1
MlBNICswMzAwLCBTZXJnZXkgT3JnYW5vdiB3cm90ZToKPj4gPj4gSGVsbG8gVXdlLAo+PiA+PiAK
Pj4gPj4gVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4g
d3JpdGVzOgo+PiA+PiA+IEhlbGxvIFNlcmdleSwKPj4gPj4gPgo+PiA+PiA+IE9uIEZyaSwgSnVs
IDE5LCAyMDE5IGF0IDAzOjE4OjEzUE0gKzAzMDAsIFNlcmdleSBPcmdhbm92IHdyb3RlOgo+PiA+
PiA+PiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3
cml0ZXM6Cj4+ID4+ID4+ID4gT24gRnJpLCBKdWwgMTksIDIwMTkgYXQgMTE6NDc6NTJBTSArMDMw
MCwgU2VyZ2V5IE9yZ2Fub3Ygd3JvdGU6Cj4+ID4+ID4+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKPj4gPj4gPj4gPj4g
aW5kZXggNTdkNmU2Yi4uOTVkNzk4NCAxMDA2NDQKPj4gPj4gPj4gPj4gLS0tIGEvZHJpdmVycy90
dHkvc2VyaWFsL2lteC5jCj4+ID4+ID4+ID4+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXgu
Ywo+PiA+PiA+PiA+PiBAQCAtNDA1LDcgKzQwNSw4IEBAIHN0YXRpYyB2b2lkIGlteF91YXJ0X3J0
c19pbmFjdGl2ZShzdHJ1Y3QgaW14X3BvcnQgKnNwb3J0LCB1MzIgKnVjcjIpCj4+ID4+ID4+ID4+
ICAvKiBjYWxsZWQgd2l0aCBwb3J0LmxvY2sgdGFrZW4gYW5kIGlycXMgY2FsbGVyIGRlcGVuZGVu
dCAqLwo+PiA+PiA+PiA+PiAgc3RhdGljIHZvaWQgaW14X3VhcnRfcnRzX2F1dG8oc3RydWN0IGlt
eF9wb3J0ICpzcG9ydCwgdTMyICp1Y3IyKQo+PiA+PiA+PiA+PiAgewo+PiA+PiA+PiA+PiAtCSp1
Y3IyIHw9IFVDUjJfQ1RTQzsKPj4gPj4gPj4gPj4gKwlpZiAoKnVjcjIgJiBVQ1IyX0NUUykKPj4g
Pj4gPj4gPj4gKwkJKnVjcjIgfD0gVUNSMl9DVFNDOwo+PiA+PiA+PiA+Cj4+ID4+ID4+ID4gSSB0
aGluayB0aGlzIHBhdGNoIGlzIHdyb25nIG9yIHRoZSBjb21taXQgbG9nIGlzIGluc3VmZmljaWVu
dC4KPj4gPj4gPj4gPiBpbXhfdWFydF9ydHNfYXV0bygpIGhhcyBvbmx5IGEgc2luZ2xlIGNhbGxl
ciBhbmQgdGhlcmUgdWNyMiAmIFVDUjJfQ1RTIGlzCj4+ID4+ID4+ID4gbmV2ZXIgdHJ1ZS4gQW5k
IENUU0MgaXNuJ3QgcmVzdG9yZWQgYW55d2hlcmUsIGlzIGl0Pwo+PiA+PiA+PiAKPj4gPj4gPj4g
VGhpcyBpcyByZWJhc2UgdG8gJ3R0eS1uZXh0JyBicmFuY2gsIGFuZCB5b3UgbmVlZCB0byBsb29r
IGF0IGl0IGluIHRoYXQKPj4gPj4gPj4gY29udGV4dC4gVGhlcmUsIHVjcjIgJiBVQ1IyX0NUUyBk
b2VzIGFscmVhZHkgbWFrZSBzZW5zZSwgZHVlIHRvIHByZXZpb3VzCj4+ID4+ID4+IGZpeCB0aGF0
IGlzIGFscmVhZHkgdGhlcmUuCj4+ID4+ID4KPj4gPj4gPiBJIGxvb2tlZCBhdCA1N2Q2ZTZiIHdo
aWNoIGlzIHRoZSBmaWxlIHlvdSBwYXRjaGVkLiBBbmQgdGhlcmUKPj4gPj4gPiBpbXhfdWFydF9y
dHNfYXV0byBpcyBvbmx5IGV2ZXIgY2FsbGVkIHdpdGggKnVjcjIgbm90IGhhdmluZyBVQ1IyX0NU
Uy4KPj4gPj4gPgo+PiA+PiA+IElmIHlvdSBzdGlsbCB0aGluayBJJ20gd3JvbmcsIHBsZWFzZSBp
bXByb3ZlIHRoZSBjb21taXQgbG9nCj4+ID4+ID4gYWNjb3JkaW5nbHkuCj4+ID4+IAo+PiA+PiBJ
IHN0aWxsIHRoaW5rIHlvdSBhcmUgd3JvbmcsIGJ1dCBJIGRvbid0IGtub3cgaG93IHRvIGltcHJv
dmUgY29tbWl0IGxvZy4KPj4gPj4gCj4+ID4+IFRvIGNoZWNrIGl0IG9uY2UgYWdhaW4sIEkganVz
dCBkaWQ6Cj4+ID4+IAo+PiA+PiAkIGdpdCBzaG93IDU3ZDZlNmIgPiBpbXguYwo+PiA+PiAKPj4g
Pj4gVGhlcmUsIGluIGlteF91YXJ0X3NldF90ZXJtaW9zKCksIEkgc2VlOgo+PiA+PiAKPj4gPj4g
MTU2OToJb2xkX3VjcjIgPSBpbXhfdWFydF9yZWFkbChzcG9ydCwgVUNSMik7Cj4+ID4+IDE1NzA6
CXVjcjIgPSBvbGRfdWNyMiAmIChVQ1IyX1RYRU4gfCBVQ1IyX1JYRU4gfCBVQ1IyX0FURU4gfCBV
Q1IyX0NUUyk7Cj4+ID4+IAo+PiA+PiBIZXJlLCBjdXJyZW50IFVDUjIgdmFsdWUgaXMgcmVhZCBp
bnRvICdvbGRfdWNyMicgYW5kIHRoZW4gaXRzIC9jdXJyZW50Lwo+PiA+PiBVQ1IyX0NUUyBiaXQg
aXMgY29waWVkIGludG8gJ3VjcjInIChhbG9uZyB3aXRoIDMgb3RoZXIgYml0cykuCj4+ID4+IAo+
PiA+PiBUaGVuLCBsYXRlciBpbiB0aGUgc2FtZSBmdW5jdGlvbjoKPj4gPj4gCj4+ID4+IDE1OTE6
CQlpbXhfdWFydF9ydHNfYXV0byhzcG9ydCwgJnVjcjIpOwo+PiA+PiAKPj4gPj4gaXMgY2FsbGVk
IHRoYXQgY2FuIGNoZWNrIC9jdXJyZW50LyBzdGF0ZSBvZiBVQ1IyX0NUUyBiaXQgaW4gJyp1Y3Iy
Jy4KPj4gPj4gCj4+ID4+IFRoYXQncyB3aGF0IHRoZSBwYXRjaCBkb2VzLCBjaGVja3MgdGhpcyBi
aXQuCj4+ID4+IAo+PiA+PiBTb3JyeSwgSSBmYWlsIHRvIHNlZSBob3cgeW91IGNhbWUgdG8gY29u
Y2x1c2lvbiB0aGF0ICIqdWNyMiBub3QgaGF2aW5nCj4+ID4+IFVDUjJfQ1RTIi4gRG8gd2UgbWF5
YmUgc3RpbGwgcmVhZCBkaWZmZXJlbnQgdmVyc2lvbnMgb2YgdGhlIGZpbGU/Cj4+ID4KPj4gPiBO
bywgaXQncyBqdXN0IHRoYXQgSSBmYWlsZWQgdG8gc2VlIHRoYXQgVUNSMl9DVFMgaXMgaW4gdGhl
IHNldCBvZiBiaXRzCj4+ID4gdGhhdCBhcmUgcmV0YWluZWQgZXZlbiB3aGVuIGxvb2tpbmcgdHdp
Y2UgOi18Cj4+IAo+PiBBaCwgdGhhdCBvbmUuLi4gSG93IGZhbWlsaWFyIDotKQo+Cj4gSSB0aG91
Z2h0IGFnYWluIGEgYml0IG92ZXIgdGhlIHdlZWtlbmQgYWJvdXQgdGhpcy4gSSB3b25kZXIgaWYg
aXQncwo+IGNvcnJlY3QgdG8ga2VlcCBSVFMgYWN0aXZlIHdoaWxlIGdvaW5nIHRocm91Z2ggLnNl
dF90ZXJtaW9zLiBTaG91bGRuJ3QKPiBpdCBtYXliZSBhbHdheXMgYmUgaW5hY3RpdmUgdG8gcHJl
dmVudCB0aGUgb3RoZXIgc2lkZSBzZW5kaW5nIGRhdGEgd2hpbGUKPiB3ZSBhcmUgY2hhbmdpbmcg
dGhlIGJhdWQgcmF0ZT8KCkkgZG9uJ3QgdGhpbmsgaXQncyBhIGdvb2QgaWRlYSB0byBjaGFuZ2Ug
UlRTIHN0YXRlIG92ZXIgLnNldF90ZXJpbWlvcywKYXMgaXQgZG9lc24ndCBpbiBmYWN0IHNvbHZl
IGFueXRoaW5nIChub3RpY2UgdGhhdCB0aGUgb3RoZXIgZW5kIHNob3VsZAphbHNvIGNoYW5nZSBi
YXVkIHJhdGUgYWNjb3JkaW5nbHkpLCBhbmQgY2hhbmdlcyB2aXNpYmxlIHN0YXRlIChldmVuIGlm
CnRlbXBvcmFyaWx5KSB0aGF0IGl0IHdhcyBub3QgYXNrZWQgdG8gY2hhbmdlLCB0aGF0IGNvdWxk
IGluIHR1cm4gbGVhZCB0bwp1dHRlciBzdXJwcmlzZXMuCgpDb3JyZWN0IGNoYW5naW5nIG9mIGJh
dWQgcmF0ZXMsIGJpdHMsIGV0Yy4sIGNvdWxkIG9ubHkgYmUgaW1wbGVtZW50ZWQgYXQKY29tbXVu
aWNhdGlvbiBwcm90b2NvbCBsZXZlbCAocmVhZDogYXBwbGljYXRpb24gbGV2ZWwpLCBhbmQgdGhl
cmUgYXJlCmFsbCB0aGUgdG9vbHMgaW4gdGhlIGtlcm5lbCB0byBkbyBpdCByaWdodCwgcHJvdmlk
ZWQgZHJpdmVyIGRvZXMgbm90IGRvCndoYXQgaXQgd2FzIG5vdCBhc2tlZCB0byBkby4KCi0tIFNl
cmdleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
