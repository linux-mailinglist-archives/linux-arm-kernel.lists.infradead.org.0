Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 626BE57BAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/49dHfRetSVqHMH3bcYwU9YFFpYFIAFyFbwjlS3UgGg=; b=UXdfcOkWMNPsRy
	Ftwgv4jCy0L54Bk/WZ/DfrvQdns3QRs7OV99S2nXchZCV5Eu8ulyD5j4W+I2iXBs2rJlvgzmvvWd3
	64TOne6QGRQHnwwmCvlwtnNP2kLP7c7+KTsEKS3Zlf0um+uSSGHZeBvxROG0WddRXpF2pgtC0xBvG
	A0byfXP+MWaj/ZgNfjoF+7AG0XrA5VCTyxXU852y35Lr1UikgSwxqYsIpOjJ6FaJK4sAVJyyjII86
	u6K1ef2nOqGXPrQpwPUFxdxvZ+uWxMyhqmIWF/TsWAWFXuH90LtNgZERT92/J98UKdEOIhOxkwgJq
	aqJD6l1KVC2Mg+ofRlTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNQO-0001mI-9I; Thu, 27 Jun 2019 05:58:24 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNQB-0001ll-Tr
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 05:58:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id 131so1019223ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 22:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=Jg1u7BG7wu6GjScXMtGk/VeNhSa0IfS4GRE9+vAXXPE=;
 b=DET1rfD5GeoeMSPoCV1yXNcu7VVU7oW0POg811KEjlSgnmdapJRNkkttJk89kMcYiF
 WnbsQJWWzCz0Y8i0kx3GuC2e6VIQqS56JshveAdrTi+iQSID1E32SvB/5Q8oXT1KpNK+
 s27Q1+PNO3bP17qDjm6F9szQYoiuBvvRwh746tu9dUeYO6iw6kckxda0fHW+XGu20cQ/
 f88NJJSSNHGS2vc6Yl0QzjNK7UDin2RE9OQKj9YDqDDGyId1r4h/fpaPDcHlXNNDAaFe
 +EPGCzMEdAJTusSS+n0wkk0C0kdzt1vMc5SNV98ivAMU+K/r6iM3lLoxtN3SB3XpFkLh
 QCbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=Jg1u7BG7wu6GjScXMtGk/VeNhSa0IfS4GRE9+vAXXPE=;
 b=WdQaepqI1LOOmdI3pEa4P+HBG0PMAYYNlhhbLcczwy17LxjaUqiJAvsshbuQXycIWx
 5iKaHgd4kAB/eOUg96cyUlx7ANc6m3gjGKD/yVBgCbFEX7nuJygj3o4eTj7eWnvQcCtN
 cTkpiM/Gy6RrJ7kBnJCyxY0QRkIaOWUuLQbrumq8NtW3qG6aCSpQO/wogO0NvVGvA0Ly
 meT4vZtX0RLzWQWubZGPoq+L7NfEFMb4tuYANA7SsoNrxD0MFQyCkYhWfi4W0/MAbnzF
 52X1RfipwKGxnZ0aAqEKOqCDhQLKbTxsv17c8HiJsytHjzUBpR80K/uYAYeGxrZ0gzaq
 XWmw==
X-Gm-Message-State: APjAAAXZdD6KLoMsvG8tc4znEo48Nr+kzio4mV14+XHjayap3ZZqIFrO
 5HHbloHy9ib1NXhOPZW4cq4n+VcV
X-Google-Smtp-Source: APXvYqwo7atdj7D9mV8TXhVmxKQUQXt4DpXmXA+E3gMAlbvHsHaAURJGHEv8q2XZ0Nsl4ikV/6a2GA==
X-Received: by 2002:a2e:854d:: with SMTP id u13mr1412795ljj.236.1561615088185; 
 Wed, 26 Jun 2019 22:58:08 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id c15sm172330lja.79.2019.06.26.22.58.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 22:58:07 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 3/7] serial: imx: set_termios(): clarify RTS/CTS bits
 calculation
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
 <1561558293-7683-4-git-send-email-sorganov@gmail.com>
 <20190627052652.ey7cmzkztylfy7k3@pengutronix.de>
Date: Thu, 27 Jun 2019 08:58:06 +0300
In-Reply-To: <20190627052652.ey7cmzkztylfy7k3@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Thu,
 27 Jun 2019 07:26:52 +0200")
Message-ID: <87k1d7k1sh.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_225811_966147_1E6686A8 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
OgoKPiBPbiBXZWQsIEp1biAyNiwgMjAxOSBhdCAwNToxMToyOVBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gQXZvaWQgcmVwZWF0aW5nIHRoZSBzYW1lIGNvZGUgZm9yIHJzNDg1IHR3
aWNlLgo+PiAKPj4gTWFrZSBpdCBvYnZpb3VzIHdlIGNsZWFyIENSVFNDVFMgYml0IGluIHRlcm1p
b3MtPmNfY2ZsYWcgd2hlbmV2ZXIKPj4gc3BvcnQtPmhhdmVfcnRzY3RzIGlzIGZhbHNlLgo+PiAK
Pj4gTWFrZSBpdCBvYnZpb3VzIHdlIGNsZWFyIFVDUjJfSVJUUyB3aGVuZXZlciBDUlRTQ1RTIGlz
IHNldC4KPj4gCj4+IFJldmlld2VkLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9u
aXguZGU+Cj4+IFRlc3RlZC1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRl
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgT3JnYW5vdiA8c29yZ2Fub3ZAZ21haWwuY29tPgo+
PiAtLS0KPj4gIGRyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDM2ICsrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyks
IDIzIGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9p
bXguYyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwo+PiBpbmRleCA4NzgwMmZkLi4xN2UyMzIy
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKPj4gKysrIGIvZHJpdmVy
cy90dHkvc2VyaWFsL2lteC5jCj4+IEBAIC0xNTY3LDM1ICsxNTY3LDI1IEBAIGlteF91YXJ0X3Nl
dF90ZXJtaW9zKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQsIHN0cnVjdCBrdGVybWlvcyAqdGVybWlv
cywKPj4gIAlpZiAoKHRlcm1pb3MtPmNfY2ZsYWcgJiBDU0laRSkgPT0gQ1M4KQo+PiAgCQl1Y3Iy
IHw9IFVDUjJfV1M7Cj4+ICAKPj4gLQlpZiAodGVybWlvcy0+Y19jZmxhZyAmIENSVFNDVFMpIHsK
Pj4gLQkJaWYgKHNwb3J0LT5oYXZlX3J0c2N0cykgewo+PiAtCQkJdWNyMiAmPSB+VUNSMl9JUlRT
Owo+PiArCWlmICghc3BvcnQtPmhhdmVfcnRzY3RzKQo+PiArCQl0ZXJtaW9zLT5jX2NmbGFnICY9
IH5DUlRTQ1RTOwo+PiAgCj4+IC0JCQlpZiAocG9ydC0+cnM0ODUuZmxhZ3MgJiBTRVJfUlM0ODVf
RU5BQkxFRCkgewo+PiAtCQkJCS8qCj4+IC0JCQkJICogUlRTIGlzIG1hbmRhdG9yeSBmb3IgcnM0
ODUgb3BlcmF0aW9uLCBzbyBrZWVwCj4+IC0JCQkJICogaXQgdW5kZXIgbWFudWFsIGNvbnRyb2wg
YW5kIGtlZXAgdHJhbnNtaXR0ZXIKPj4gLQkJCQkgKiBkaXNhYmxlZC4KPj4gLQkJCQkgKi8KPj4g
LQkJCQlpZiAocG9ydC0+cnM0ODUuZmxhZ3MgJgo+PiAtCQkJCSAgICBTRVJfUlM0ODVfUlRTX0FG
VEVSX1NFTkQpCj4+IC0JCQkJCWlteF91YXJ0X3J0c19hY3RpdmUoc3BvcnQsICZ1Y3IyKTsKPj4g
LQkJCQllbHNlCj4+IC0JCQkJCWlteF91YXJ0X3J0c19pbmFjdGl2ZShzcG9ydCwgJnVjcjIpOwo+
PiAtCQkJfSBlbHNlIHsKPj4gLQkJCQlpbXhfdWFydF9ydHNfYXV0byhzcG9ydCwgJnVjcjIpOwo+
PiAtCQkJfQo+PiAtCQl9IGVsc2Ugewo+PiAtCQkJdGVybWlvcy0+Y19jZmxhZyAmPSB+Q1JUU0NU
UzsKPj4gLQkJfQo+PiAtCX0gZWxzZSBpZiAocG9ydC0+cnM0ODUuZmxhZ3MgJiBTRVJfUlM0ODVf
RU5BQkxFRCkgewo+PiAtCQkvKiBkaXNhYmxlIHRyYW5zbWl0dGVyICovCj4+ICsJaWYgKHBvcnQt
PnJzNDg1LmZsYWdzICYgU0VSX1JTNDg1X0VOQUJMRUQpIHsKPj4gKwkJLyoKPj4gKwkJICogUlRT
IGlzIG1hbmRhdG9yeSBmb3IgcnM0ODUgb3BlcmF0aW9uLCBzbyBrZWVwCj4+ICsJCSAqIGl0IHVu
ZGVyIG1hbnVhbCBjb250cm9sIGFuZCBrZWVwIHRyYW5zbWl0dGVyCj4+ICsJCSAqIGRpc2FibGVk
Lgo+PiArCQkgKi8KPj4gIAkJaWYgKHBvcnQtPnJzNDg1LmZsYWdzICYgU0VSX1JTNDg1X1JUU19B
RlRFUl9TRU5EKQo+PiAgCQkJaW14X3VhcnRfcnRzX2FjdGl2ZShzcG9ydCwgJnVjcjIpOwo+PiAg
CQllbHNlCj4+ICAJCQlpbXhfdWFydF9ydHNfaW5hY3RpdmUoc3BvcnQsICZ1Y3IyKTsKPj4gLQl9
Cj4+ICAKPj4gKwl9IGVsc2UgaWYgKHRlcm1pb3MtPmNfY2ZsYWcgJiBDUlRTQ1RTKQo+PiArCQlp
bXhfdWFydF9ydHNfYXV0byhzcG9ydCwgJnVjcjIpOwo+Cj4gSGVyZSBhIHNldCBvZiBicmFjZXMg
aXMgbmVlZGVkIGV2ZW4gaWYgdGhlIGJvZHkgaGFzIG9ubHkgYSBzaW5nbGUKPiBsaW5lLgoKUmVh
bGx5PyBzY3JpcHRzL2NoZWNrcGF0Y2gucGwgZGlkbid0IGNhdGNoIHRoaXMuCgpJZiBuZWVkZWQs
IGlzIGl0IGVzc2VudGlhbCBlbm91Z2ggdG8gZml4IGhlcmUsIGFzIGZpbmFsIHJlc3VsdCBoYXMg
dGhpcwpjaHVuayBkaWZmZXJlbnQgYW55d2F5IChhbmQgd2l0aCBicmFjZXMpPwoKPgo+PiArCj4+
ICsJaWYgKHRlcm1pb3MtPmNfY2ZsYWcgJiBDUlRTQ1RTKQo+PiArCQl1Y3IyICY9IH5VQ1IyX0lS
VFM7Cj4+ICAKPj4gIAlpZiAodGVybWlvcy0+Y19jZmxhZyAmIENTVE9QQikKPj4gIAkJdWNyMiB8
PSBVQ1IyX1NUUEI7Cj4KPiBJcyB0aGlzIHBhdGNoIGludGVuZGVkIHRvIG5vdCBjaGFuZ2Ugc2Vt
YW50aWM/IEkgd29uZGVyIGlmIGl0IGhpZGVzIGEKPiBmaXggYmVjYXVzZSBpZiBpbXhfdWFydF9z
ZXRfdGVybWlvcygpIHdhcyBjYWxsZWQgd2l0aCB0ZXJtaW9zLT5jX2NmbGFnCj4gJiBDUlRTQ1RT
IGFuZCAhc3BvcnQtPmhhdmVfcnRzY3RzIHRoZSByczQ4NSBibG9jayB3YXMgbm90IHJlYWNoZWQu
IE5vdwo+IGl0IGlzLgoKQXMgY29tbWVudCBzYXlzICJSVFMgaXMgbWFuZGF0b3J5IGZvciByczQ4
NSBvcGVyYXRpb24iLCBJIGFzc3VtZWQKU0VSX1JTNDg1X0VOQUJMRUQgYW5kICFzcG9ydC0+aGF2
ZV9ydHNjdHMgYXJlIGluY29tcGF0aWJsZSwgc28KdGhlcmUgc2hvdWxkIGJlIG5vIGFjdHVhbCBz
ZW1hbnRpYyBjaGFuZ2UgaGVyZS4gSSBtZWFuOgoKCWlmIChwb3J0LT5yczQ4NS5mbGFncyAmIFNF
Ul9SUzQ4NV9FTkFCTEVEKSB7CiAgICAgICAgCWFzc2VydChzcG9ydC0+aGF2ZV9ydHNjdHMpOwoK
c2hvdWxkIG5ldmVyIGZpcmUuCgpEbyB5b3UgdGhpbmsgSSByYXRoZXIgbmVlZCB0byBwdXQgYWRk
aXRpb25hbCBjaGVjayBmb3IKc3BvcnQtPmhhdmVfcnRzY3RzIGluc2lkZSB0aGUgU0VSX1JTNDg1
X0VOQUJMRUQgY2FzZT8KClRoYW5rcyEKCi0tIFNlcmdleQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
