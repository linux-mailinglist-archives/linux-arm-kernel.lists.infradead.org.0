Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B9C1CF36
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+ubcDJSi91aLf6VUoeBUrXPrpRn4LVgJwK2ppNUDsY=; b=KP9D6G1ZZidunT
	5NN8NjXcjEoCTqu0Z8wkAuy24xUz+zqG3gZch8NwlnSWz1cQpbO3Nc0WVOi4q41U7jN42gKQElm3w
	JqCYEST7yv/bYq1v3L5yiqkYAfQdLv6ThUOxowz/Ql7V5GUWa9C6YXPyxxubFJFENUqbYME/Ojsd6
	A5RfifJxoh4c5nleKY/I1ym++loKRaltNvp4EkIzAY2HGcfIBnk1Ldm+U1O4gBeYPlyh7F0RhPvO8
	CTMeEZP64yj61C4vnVa1jypu4YzewVynHzrPLYt5hKQN9xNYPnK+pPWLqZkxw+fp1rIETM5jysN0c
	Dng9VaQRSkgHiQZMp/tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcKX-0006gF-DN; Tue, 14 May 2019 18:39:13 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcKP-0006fj-TK
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 18:39:07 +0000
Received: by mail-ed1-x543.google.com with SMTP id w11so319369edl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 11:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=zbQPQaaby+KlyxId7O5QJocsqofQF1fdS7ooQBqTlW8=;
 b=CCj6ARw9oyqJuC5ug0nu+zWpYTTdWJ6wJMtW9rF0/8KKRyAKJ2CYcWp1lYtf/nbIdZ
 iXFtrn9BO5wDu4sDeyyWkyrktH0y9kNNBMgXPcSiWMC7yRPjXQF6rSx/MrNgFlVGWOaw
 /zMU2CM/l7YHa1oSzX8g198XzkUmC2+xA4PMcJJ9yDkXeE/R1ZVCU9O2k3Bn51Hdr73D
 valCo0p7kxQjsJ3FgAReWUp16OnJmpN6y4gO3VHnpAqXTxnbHUgZVjpXC3sNn12b36mc
 yKr25r1yXucKTSm/IuCFKHuwNrUI6Bw01Bp91kfYI+FalBk9vUnivZWuVuylm/eyeJCO
 hMEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zbQPQaaby+KlyxId7O5QJocsqofQF1fdS7ooQBqTlW8=;
 b=I1JYJ+Y0XAk1Cz41uIwpHbOwu9eRMvNTi5R6P0bJmcJCYZ+tW8MlK/d5pO1LT9cWnW
 kY+//5LOl43JhJ+3msWu+kYL3N0zcvSUP6rb8zeJJOhHQz26hek14ipypNt8QLp52sVB
 pmR1sCAPkj7NzrIbSouH7zpai+ZeshzNxiJIYHXVa0CvI9dh+Jb7JIiooWWMZSxIP13E
 eiTC0hlL1c97mSFA9NRNKBKztS8NBNReY6HbzDSYgXJcpssyaNL4WExgCpKmqT0o76Ps
 gHnQGkX1X8Fv1hKkjRzKxEnNVKrNKVe8fHw7fqOvE5OENWmwlYehwJGiOtRcnA5zBTlG
 CJjw==
X-Gm-Message-State: APjAAAUs7UDUZL+GmqaLEyR7INsfQzFtXqp3ap6iFIAbD5yWZgN0Mxeh
 gC6Gl/BWlKnyAAe1YM+JSvg=
X-Google-Smtp-Source: APXvYqy0qvzGEjq1y48Okv+3jHOz8HFzZ2WmeJBsHys55evhDE3EUT9InoSURjcnwGMUN9OwBSov7Q==
X-Received: by 2002:a50:fd0a:: with SMTP id i10mr37752734eds.117.1557859143820; 
 Tue, 14 May 2019 11:39:03 -0700 (PDT)
Received: from archlinux-i9 ([2a01:4f9:2b:2b84::2])
 by smtp.gmail.com with ESMTPSA id p52sm4738334eda.79.2019.05.14.11.39.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 11:39:02 -0700 (PDT)
Date: Tue, 14 May 2019 11:39:00 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] mfd: stmfx: Fix macro definition spelling
Message-ID: <20190514183900.GA7559@archlinux-i9>
References: <20190511012301.2661-1-natechancellor@gmail.com>
 <20190513073059.GH4319@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513073059.GH4319@dell>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_113905_972655_E8507871 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgMDg6MzA6NTlBTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIEZyaSwgMTAgTWF5IDIwMTksIE5hdGhhbiBDaGFuY2VsbG9yIHdyb3RlOgo+IAo+ID4g
Q2xhbmcgd2FybnM6Cj4gPiAKPiA+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL21mZC9z
dG1meC5jOjEzOgo+ID4gaW5jbHVkZS9saW51eC9tZmQvc3RtZnguaDo3Ojk6IHdhcm5pbmc6ICdN
RkRfU1RNRlhfSCcgaXMgdXNlZCBhcyBhCj4gPiBoZWFkZXIgZ3VhcmQgaGVyZSwgZm9sbG93ZWQg
YnkgI2RlZmluZSBvZiBhIGRpZmZlcmVudCBtYWNybwo+ID4gWy1XaGVhZGVyLWd1YXJkXQo+ID4g
Cj4gPiBGaXhlczogMDYyNTJhZGU5MTU2ICgibWZkOiBBZGQgU1QgTXVsdGktRnVuY3Rpb24gZVhw
YW5kZXIgKFNUTUZYKSBjb3JlIGRyaXZlciIpCj4gPiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20v
Q2xhbmdCdWlsdExpbnV4L2xpbnV4L2lzc3Vlcy80NzUKPiA+IFNpZ25lZC1vZmYtYnk6IE5hdGhh
biBDaGFuY2VsbG9yIDxuYXRlY2hhbmNlbGxvckBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBpbmNs
dWRlL2xpbnV4L21mZC9zdG1meC5oIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IEFwcGxpZWQsIHRoYW5rcy4KPiAKPiAtLSAKPiBM
ZWUgSm9uZXMgW+adjueQvOaWr10KPiBMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKPiBM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKPiBGb2xsb3cg
TGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpIaSBMZWUsCgpUaGFua3MgZm9yIHBp
Y2tpbmcgaXQgdXAuIEl0IHNlZW1zIHRoaXMgZGlkbid0IG1ha2UgaXQgaW50byB5b3VyIE1GRApw
dWxsIHJlcXVlc3QgZm9yIDUuMiwgd2FzIHRoYXQgaW50ZW50aW9uYWw/IEl0IHdvdWxkIGJlIG5p
Y2UgdG8gYXZvaWQKdGhpcyB3YXJuaW5nLgoKVGhhbmtzLApOYXRoYW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
