Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA346E586
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 14:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uV+kQHfvqA6RIQHqwq1IuNqJvFgGudKhEexOXwSS1hE=; b=n92prWBpBN1YWT
	Xc/e39mO6n+4Cjwm3cG1m3C8odFGCjCZTs9QhG3Qo8SwFoBzJr/jq2foi7wFhQ9QxCPdt1LU7dNLH
	VQDWJNvj1q/XCZKsyYS3Mo9Eh60kRfi9GWjjxq6uKDcYfuQZK5ws7KkTrOwSa4sVG426yIpF0geNY
	kcWWhwJtM4ZPTkjbyqtB9iv6xO2J/+w05s94yVLq28zYCJbp5ctaPd+o6ZamK4CkmdADZThcLoy6F
	A5Bv3JRH0uf8UpZgEV88bVmu5OEoCbG4VKer8KhytaB0iA68Nalago+U+STcjhQ3WI4Xq+qHk0EeS
	9MDX+3hv5nDVdxI0HQ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoRqN-0002xu-6W; Fri, 19 Jul 2019 12:18:35 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoRq9-0002wZ-3A
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 12:18:22 +0000
Received: by mail-lf1-x142.google.com with SMTP id v85so21575337lfa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 05:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=sJJ3haStcYVCQLC55Zqi45W+Uiy3h1nIfrW7f0A8CjY=;
 b=IvT3gbmDE5KfscUD4MlFZ8DgTuxdqb8vhDHkn7KRp3eXACtYdlfeseLCD4aXmMaQn2
 StE83aZwsPETq45KDHNy1q/ErF54C2Mhk3AES8ljls1MiMUgr81fEAitAW7W8pxrGjh/
 1kX77DbhKOfBCnMZ7rnL+qkjcqjk8lCkQd0HHWYzA6zIaZOsv3XT44u9Zr8X4XlELYOd
 lW1L/VK5YWLJGIKnorkPkrjVO1ZUi8PDmCsld8olqmLWAPnJuxD4GRl8VETBog+Co5CJ
 WHgZk30tpRVaDw4UDrOMkjVC7FO0pLxCP8phhXlKKXxxoCorjbWsTqVfEJTYLlHWXcSx
 sTDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=sJJ3haStcYVCQLC55Zqi45W+Uiy3h1nIfrW7f0A8CjY=;
 b=B71eiAGo6dB/f4iE1rwm9QQBuxcbJZBGqTIl1bk74g1HUA9WPwnriTXk1VT1MybhpR
 T/k0DtYWOFeAt8ho8zFybS5bHkdK0P9szMEI5Tf7Zlgc6VGE+YUQ/NkJhBsuYiBp731c
 Qbk4EzcHrIJtXyYDuxb2faot1dICMv4kzUZ9xqmRMtEGVAKhrcSZNy5fG3O6Y/INUh3o
 tLo9fAWcm5LQNlePobXzpASRZ6mzqLEXK8rsYnjDtgkGwdRQuutkskSG0DFahzfJHT/6
 43WMjL9G7NKpeMY87x5gjZMapiWo5UwOG6Y+fsJz4Yl6Ep/dQXlu9wHVW4qSdV6wfkY5
 Y/rw==
X-Gm-Message-State: APjAAAXBuyv/c4lVX9fL3m0YdypCI9nrrcafbWfXvl1uAUsGNgT14vRW
 XFVX7OY069hn/YB8dDUiGanz5ByW
X-Google-Smtp-Source: APXvYqxyI377xpuBRTvwQ07onopaIqNWtwQT6nzJm5OZLgnAIi0mh1DVlznyn1O2xj5L9EkhN/60Bw==
X-Received: by 2002:a19:c514:: with SMTP id w20mr24217711lfe.182.1563538695628; 
 Fri, 19 Jul 2019 05:18:15 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id b68sm6435545ljb.0.2019.07.19.05.18.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 05:18:14 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v4 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
 <1563526074-20399-2-git-send-email-sorganov@gmail.com>
 <20190719091143.uhjxeibtolgswq2l@pengutronix.de>
Date: Fri, 19 Jul 2019 15:18:13 +0300
In-Reply-To: <20190719091143.uhjxeibtolgswq2l@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Fri,
 19 Jul 2019 11:11:43 +0200")
Message-ID: <87h87idxq2.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_051821_143745_5D0322E4 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
OgoKPiBPbiBGcmksIEp1bCAxOSwgMjAxOSBhdCAxMTo0Nzo1MkFNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gc2V0X3Rlcm1pb3MoKSBzaG91bGRuJ3Qgc2V0IFVDUjJfQ1RTQyBiaXQg
aWYgVUNSMl9DVFMgKD1USU9DTV9SVFMpIGlzCj4+IGNsZWFyZWQuIEFkZGVkIGNvcnJlc3BvbmRp
bmcgY2hlY2sgaW4gaW14X3VhcnRfcnRzX2F1dG8oKSB0byBmaXggdGhpcy4KPgo+IFRoaXMgaXMg
bm90IHVuZGVyc3RhbmRhYmxlIHVubGVzcyB5b3UgcmVhZCB0aGUgcmVmZXJlbmNlIG1hbnVhbC4K
Pgo+IEluIHRlcm1zIHVuZGVyc3RhbmRhYmxlIHdpdGhvdXQgbWFudWFsLCB0aGlzIHBhdGNoIGRv
ZXM6Cj4KPiAJRG9uJ3QgbGV0IHRoZSByZWNlaXZlciBoYXJkd2FyZSBjb250cm9sIHRoZSBSVFMg
b3V0cHV0IGlmIGl0IHdhcwo+IAlyZXF1ZXN0ZWQgdG8gYmUgaW5hY3RpdmUuCgpJJ2xsIGZpeCBp
dCwgdGhhbmtzIQoKPgo+PiBSZXZpZXdlZC1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1
dHJvbml4LmRlPgo+PiBUZXN0ZWQtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25p
eC5kZT4KPj4gU2lnbmVkLW9mZi1ieTogU2VyZ2V5IE9yZ2Fub3YgPHNvcmdhbm92QGdtYWlsLmNv
bT4KPj4gLS0tCj4+ICBkcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgfCAzICsrLQo+PiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+PiAKPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwo+
PiBpbmRleCA1N2Q2ZTZiLi45NWQ3OTg0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJp
YWwvaW14LmMKPj4gKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jCj4+IEBAIC00MDUsNyAr
NDA1LDggQEAgc3RhdGljIHZvaWQgaW14X3VhcnRfcnRzX2luYWN0aXZlKHN0cnVjdCBpbXhfcG9y
dCAqc3BvcnQsIHUzMiAqdWNyMikKPj4gIC8qIGNhbGxlZCB3aXRoIHBvcnQubG9jayB0YWtlbiBh
bmQgaXJxcyBjYWxsZXIgZGVwZW5kZW50ICovCj4+ICBzdGF0aWMgdm9pZCBpbXhfdWFydF9ydHNf
YXV0byhzdHJ1Y3QgaW14X3BvcnQgKnNwb3J0LCB1MzIgKnVjcjIpCj4+ICB7Cj4+IC0JKnVjcjIg
fD0gVUNSMl9DVFNDOwo+PiArCWlmICgqdWNyMiAmIFVDUjJfQ1RTKQo+PiArCQkqdWNyMiB8PSBV
Q1IyX0NUU0M7Cj4KPiBJIHRoaW5rIHRoaXMgcGF0Y2ggaXMgd3Jvbmcgb3IgdGhlIGNvbW1pdCBs
b2cgaXMgaW5zdWZmaWNpZW50Lgo+IGlteF91YXJ0X3J0c19hdXRvKCkgaGFzIG9ubHkgYSBzaW5n
bGUgY2FsbGVyIGFuZCB0aGVyZSB1Y3IyICYgVUNSMl9DVFMgaXMKPiBuZXZlciB0cnVlLiBBbmQg
Q1RTQyBpc24ndCByZXN0b3JlZCBhbnl3aGVyZSwgaXMgaXQ/CgpUaGlzIGlzIHJlYmFzZSB0byAn
dHR5LW5leHQnIGJyYW5jaCwgYW5kIHlvdSBuZWVkIHRvIGxvb2sgYXQgaXQgaW4gdGhhdApjb250
ZXh0LiBUaGVyZSwgdWNyMiAmIFVDUjJfQ1RTIGRvZXMgYWxyZWFkeSBtYWtlIHNlbnNlLCBkdWUg
dG8gcHJldmlvdXMKZml4IHRoYXQgaXMgYWxyZWFkeSB0aGVyZS4KCkFsdGVybmF0aXZlbHksIGxv
b2sgYXQgdjMgb2YgdGhlIHBhdGNoZXMsIGJ1dCB5b3UgYmFzaWNhbGx5IGFscmVhZHkgZGlkLgpJ
dCdzIHRoYXQgdGhlIGZpcnN0IHBhcnQgb2YgdjMgcGF0Y2ggc2VyaWVzIGhhcyBiZWVuIGFscmVh
ZHkgYWNjZXB0ZWQKdXBzdHJlYW0sIGFuZCB0aGlzIGlzIHRoZSByZXN0IG9mIHRob3NlIHBhdGNo
ZXMuCgpUaGFua3MhCgotLSBTZXJnZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
