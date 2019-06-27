Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BE957D90
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5e7QS8l4L8b5VcY6AyjSzuj7TIxG9olQFCh9VJsp48w=; b=DLbNwek7QOnBUS
	UyNRRhH75NdUA9EPfgm8yn+ZhZI44WMH/FvKpWLoEJ3cgkFO7HaRJgy9XG+mOUYtDXrVtfEY/00pv
	voSpASSVdHzV6ohqxpT0B3ez189aXt+7fQ4agK7T+51MbsZ4XoB2H4VyNu4gZ0lN5V98/NSP9T1tL
	S+vKbH+LnYzpuH1UpSnOW/h+uMWguocpTAeXuxfzjKff6hiqhjVIo8V++cRW4AarWi8Xd2Oxba3Kl
	aLeELhUD/mMY1OI39bVIx5sWxJiPvh4MGC3bKs5PvHEoHy2uiviQV7F2/SHg6rUjiKtcQ4D2T1Xa0
	j4+mZeautf0Qg35wU70g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPIf-0004BN-K5; Thu, 27 Jun 2019 07:58:33 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPIR-0004Ak-U6
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 07:58:21 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so1344637ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 00:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=SrYQt9XAw3qaOEUzWG3cFurd2CYrY9c39EX9R/cNWh4=;
 b=huMpTxcnNLTOaj70bYRxPO+C7I0mOoL9g1iWzizVLS6EsGGCEQttonGaS03GdnX4B+
 +1orA1/erkY6wioCaiVZANaA3/qnuiyphMwyR9R/cZg5ZRhKbyYtOndIXo6kTqjtU1lS
 cO70uX8vNHULIRetLEPQcNZag4Fjhl40MQUwTPxlf5XSdgWespvp4wwugdLTR+P4k+aM
 qIpAKip1ijdQuWWCTg52CnWYypdWIwOQvzdAnWnJ3bjgVirWUBMReQFY0kuPi5tOukAb
 JiTRMVYpo7RtwBcAmElpNFiMfaJJZWCvuLr4fR3Fw5xAbco7SNjU0vFbm2Jbree38Ngx
 3NAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=SrYQt9XAw3qaOEUzWG3cFurd2CYrY9c39EX9R/cNWh4=;
 b=B7B713pY5RIRaDVLE1Wz8joN5zPBCwmV4h0ifQ/HPaXpncfhDGh0RCQxLJt2v+ePt9
 eWRD244UdIvU9ZAErd+84o+ZvHOeCkjjFrTnpcmPJVoA82rH/w7W4dayIsGPWL/IAU1d
 Ar9LZlXvnmyOyjgRrp3/b5CQ2GMy3GoJsJAJY3433h8lRswc3FhJgdUjdX9MpilNbK+c
 3x2MN7UUPVUJV/j7gHTsHu7aNRzKwJs/6l5Hh+aKJsZiypnYUV0Qth6GGv8ywOnfdJGE
 hb9EIn7sKXWqna5w53A01HUbwllmcAZUqKocokW0+o0mciOy7bah71Fg5RLzRtja/gAE
 qDKA==
X-Gm-Message-State: APjAAAViqRuYYtYzrcMfAB3ZTPjp3G+D0GZ1gwkLu8HeabAPx2mJeeBV
 mkOT3vWYXiQgHWveXRxuw1HrMYZo
X-Google-Smtp-Source: APXvYqx682tfPumII1B4gK4hjgZXO073JmzjdXio+BtCndQ+fG8Me/uN13zLxcRQ6ymGYFzHrdMfjw==
X-Received: by 2002:a2e:8756:: with SMTP id q22mr1798432ljj.108.1561622295391; 
 Thu, 27 Jun 2019 00:58:15 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id n24sm230205ljc.25.2019.06.27.00.58.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 00:58:14 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 7/7] serial: imx: get rid of imx_uart_rts_auto()
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-8-git-send-email-sorganov@gmail.com>
 <20190627060838.ls5ghzngkoiczqex@pengutronix.de>
Date: Thu, 27 Jun 2019 10:58:13 +0300
In-Reply-To: <20190627060838.ls5ghzngkoiczqex@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Thu,
 27 Jun 2019 08:08:38 +0200")
Message-ID: <87v9wrh33e.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_005819_977541_FD659555 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBXZWQsIEp1biAyNiwgMjAxOSBhdCAwNToxMTozM1BNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gQ2FsbGVkIGluIG9ubHkgb25lIHBsYWNlLCBmb3IgUlMyMzIsIGl0IG9u
bHkgb2JzY3VyZXMgdGhpbmdzLCBhcyBpdAo+PiBkb2Vzbid0IGdvIHdlbGwgd2l0aCAyIHNpbWls
YXIgbmFtZWQgZnVuY3Rpb25zLAo+PiBpbXhfdWFydF9ydHNfaW5hY3RpdmUoKSBhbmQgaW14X3Vh
cnRfcnRzX2FjdGl2ZSgpLCB0aGF0IGJvdGggYXJlCj4+IFJTNDg1LXNwZWNpZmljLgo+PiAKPj4g
UmV2aWV3ZWQtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPj4gVGVz
dGVkLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+IFNpZ25lZC1v
ZmYtYnk6IFNlcmdleSBPcmdhbm92IDxzb3JnYW5vdkBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgZHJp
dmVycy90dHkvc2VyaWFsL2lteC5jIHwgMTMgKysrKy0tLS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKPj4gaW5k
ZXggMTcxMzQ3ZC4uYTVlODBhMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL2lt
eC5jCj4+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwo+PiBAQCAtNDAyLDEzICs0MDIs
NiBAQCBzdGF0aWMgdm9pZCBpbXhfdWFydF9ydHNfaW5hY3RpdmUoc3RydWN0IGlteF9wb3J0ICpz
cG9ydCwgdTMyICp1Y3IyKQo+PiAgCW1jdHJsX2dwaW9fc2V0KHNwb3J0LT5ncGlvcywgc3BvcnQt
PnBvcnQubWN0cmwpOwo+PiAgfQo+PiAgCj4+IC0vKiBjYWxsZWQgd2l0aCBwb3J0LmxvY2sgdGFr
ZW4gYW5kIGlycXMgY2FsbGVyIGRlcGVuZGVudCAqLwo+PiAtc3RhdGljIHZvaWQgaW14X3VhcnRf
cnRzX2F1dG8oc3RydWN0IGlteF9wb3J0ICpzcG9ydCwgdTMyICp1Y3IyKQo+PiAtewo+PiAtCWlm
ICgqdWNyMiAmIFVDUjJfQ1RTKQo+PiAtCQkqdWNyMiB8PSBVQ1IyX0NUU0M7Cj4+IC19Cj4+IC0K
Pj4gIC8qIGNhbGxlZCB3aXRoIHBvcnQubG9jayB0YWtlbiBhbmQgaXJxcyBvZmYgKi8KPj4gIHN0
YXRpYyB2b2lkIGlteF91YXJ0X3N0YXJ0X3J4KHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQpCj4+ICB7
Cj4+IEBAIC0xNTk4LDggKzE1OTEsMTAgQEAgaW14X3VhcnRfc2V0X3Rlcm1pb3Moc3RydWN0IHVh
cnRfcG9ydCAqcG9ydCwgc3RydWN0IGt0ZXJtaW9zICp0ZXJtaW9zLAo+PiAgCQllbHNlCj4+ICAJ
CQlpbXhfdWFydF9ydHNfaW5hY3RpdmUoc3BvcnQsICZ1Y3IyKTsKPj4gIAo+PiAtCX0gZWxzZSBp
ZiAodGVybWlvcy0+Y19jZmxhZyAmIENSVFNDVFMpCj4+IC0JCWlteF91YXJ0X3J0c19hdXRvKHNw
b3J0LCAmdWNyMik7Cj4+ICsJfSBlbHNlIGlmICh0ZXJtaW9zLT5jX2NmbGFnICYgQ1JUU0NUUykg
ewo+PiArCQlpZiAodWNyMiAmIFVDUjJfQ1RTKQo+PiArCQkJdWNyMiB8PSBVQ1IyX0NUU0M7Cj4+
ICsJfQo+Cj4gQXQgbGVhc3QgYmVmb3JlIGl0IHdhcyAoc29tZXdoYXQpIGNsZWFyIHRoYXQgdGhp
cyBpcyBhYm91dCBSVFMgYW5kIGl0Cj4gaXMgYWJvdXQgc29tZXRoaW5nIGF1dG9tYXRpYy4gU28g
SSBkb24ndCBsaWtlIHRoZSBwYXRjaC4KCk1heWJlIEkganVzdCBuZWVkIHRvIHB1dCBhIGNvbW1l
bnQgaGVyZSB0byBjbGFyaWZ5PwoKTGV0IG1lIHRyeSB0byBjb252aW5jZSB5b3UgcmVtb3ZhbCBp
cyBhIGdvb2QgdGhpbmcuCgpMZXQncyB0cnkgdG8gbWVudGFsbHkgcmV2ZXJ0IHRoZSBwYXRjaC4g
SWYgd2UgYWxyZWFkeSBoYXZlCgoJfSBlbHNlIGlmICh0ZXJtaW9zLT5jX2NmbGFnICYgQ1JUU0NU
UykgewoJCWlmICh1Y3IyICYgVUNSMl9DVFMpCgkJCXVjcjIgfD0gVUNSMl9DVFNDOwoJfQoKSSBz
ZWUgbm8gcmVhc29uIHRvIG1ha2UgMiBsaW5lcyBpbnNpZGUgaWYoKSBhIGZ1bmN0aW9uLgoKRmly
c3QsIGl0J3MgYWxyZWFkeSBvYnZpb3VzIGl0J3MgYWJvdXQgc29tZXRoaW5nIGF1dG9tYXRpYywg
ZHVlIHRvIGlmKCkKY29uZGl0aW9uIGl0c2VsZi4KClNlY29uZCwgdGhlIGZhY3QgdGhhdCBpdCdz
IGFib3V0IFJUUyBpcyBhcyBbbm9uLV1vYnZpb3VzIGFzIGluIGFueSBvdGhlcgpwbGFjZSBpbiB0
aGUgZHJpdmVyLCB0YWtpbmcgaW50byBhY2NvdW50IHRoYXQgaU1YIGNhbGxzICJSVFMiICJDVFMi
IGFuZAp2aWNlIHZlcnNhLgoKRmluYWxseSwgc2hvdWxkIHdlIHN0aWxsIGFyZ3VlIGFkZGluZyBh
IGZ1bmN0aW9uIHdvdWxkIGJlIHVzZWZ1bCwgd2UnZApuZWVkIHRvIGFsc28gYWRkLCBmb3IgY29u
c2lzdGVuY3ksCgogIHN0YXRpYyB2b2lkIGlteF91YXJ0X3J0c19tYW51YWwoc3RydWN0IGlteF9w
b3J0ICpzcG9ydCwgdTMyICp1Y3IyKTsKCihhcyBleGlzdGluZyBydHNfb24oKSBhbmQgcnRzX29m
ZigpIGRvIG5vdCBzZXJ2ZSB0aGUgcHVycG9zZSksCgphcyB3ZWxsIGFzIENUUyBjb3VudGVycGFy
dHM6CgogIHN0YXRpYyB2b2lkIGlteF91YXJ0X2N0c19hdXRvKHN0cnVjdCBpbXhfcG9ydCAqc3Bv
cnQsIHUzMiAqdWNyMik7CiAgc3RhdGljIHZvaWQgaW14X3VhcnRfY3RzX21hbnVhbChzdHJ1Y3Qg
aW14X3BvcnQgKnNwb3J0LCB1MzIgKnVjcjIpOwoKYW5kIHBhdGNoIHRoZSBjb2RlIHJhdGhlciBo
ZWF2aWx5LCBmb3Igbm8gb2J2aW91cyBnYWluLgoKT3ZlcmFsbCwgSSBiZWxpZXZlIGFkZGluZyB0
aGUgZnVuY3Rpb24gd291bGQgb25seSBvYnNjdXJlIHRoaW5ncy4KCk9UT0gsIGV4aXN0ZW5jZSBv
ZiB0aGF0IGZ1bmN0aW9uIGZvcmNlZCBtZSB0byBleGFtaW5lIHRoZSB3aG9sZSBzb3VyY2UKanVz
dCB0byBmaWd1cmUgdGhhdCB1bmxpa2Ugb3RoZXIgMiBzaW1pbGFyIG5hbWVkLCBpdCBzZXJ2ZXMg
ZW50aXJlbHkKZGlmZmVyZW50IGxvZ2ljYWwgcHVycG9zZSAoaS5lLiwgaXQncyBfbm90XyAzLWQg
YWx0ZXJuYXRpdmUgZm9yIHRob3NlCjIpLCBhbmQgaXMgbm90IHVzZWQgYW55d2hlcmUgZWxzZS4K
Ckxvb2s6IHdoZW4gd2UgaGF2ZSBydHNfYXV0bygpLCBydHNfb2ZmKCksIGFuZCBydHNfb24oKSwg
aXQncyBsb2dpY2FsIHRvCmV4cGVjdCBpdCdzIG9uZSBvZiB0aGVtIHRoYXQgd2lsbCBiZSBjYWxs
ZWQgd2hlbiB0b3AtbGV2ZWwgYXNrcyBmb3IKYXV0b21hdGljIFJUUy9DVFMsIG1hbnVhbCBSVFMg
b2ZmLCBhbmQgbWFudWFsIFJUUyBvbiwgcmVzcGVjdGl2ZWx5LAppc24ndCBpdD8gQnV0IGl0IGlz
IG5vdCB0aGUgY2FzZSBhdCBhbGwhIFN0aWxsIHJ0c19hdXRvKCkgZG9lc24ndCBmaXQgdG8KdGhl
IG92ZXJhbGwgcGljdHVyZS4KClRoYW5rcyEKCi0tIFNlcmdleQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
