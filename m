Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81EA16EEB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 20:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWT+YN6FX005aa4/tjekeco45z9vfNhVcNdvYiQzroE=; b=nkq242iAlrVMPr
	rEyTdnLLU+x3KWe6m0W4x40h3orEpkQoEPXfi9zKx+8ENuvR4W748HrDt0QLu3rRA14/UKUhvb+YX
	eB681UsthslLmhU1ePDVVruGxV3N0MzgcGpr2FBszi00Nq3//JQn8e2mlSKeEjCWw5+HNNAyczQrc
	Gyd/0bIqqJqFM+ecnfz9lCFeaeAS9qwM6Caj/DNQ9roxxc/yMM3XUG4AjEiYv+gx76YWOBLFcy6P1
	IkPMRvRdp55XyLfp0AIK9quAao2xjJIq8+5e9BFmL5dkXUaVYHuBL1YD8dujBv7/4p+4Lst21jZR9
	rAdLCYlKnKZRbwNgAftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fbT-0000yI-9y; Tue, 25 Feb 2020 19:10:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fbI-0000x6-7y
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 19:10:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id q4so186061pls.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 11:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bY/V/GmjTMwSsbRxOp3cbtrLAwvSrthIWK239p8DTzE=;
 b=Aglq1138iS0WwGsnGj4iO2plS1JbUrLovS1ZRixzAwJERIoNzyYnl5R4Vo+KIBeiDV
 HhE6mxbJGYUuVrRfAh76ZfgRg6d6ZMlS19jH6oKNbTYvByroJBD33ZXJBwsMIzDGfsqR
 xnBwbORa/szJwZza3OHTWSQf0vnuKJITm5h3kzjAVTh1ijd7GFtpYjQG/XSVEHk+03hZ
 KBN0Ia0+s1aLmFibRSOpyAT2KYvn85gF5uunWXCykkhYZGMcpemyRFgnlo4euw5sUjQN
 TpoMHx5u/F3l7Gt9MgRaAZm1US7hI805gqNJBL6eFvYpcLCjYMyIq4qgOFloYQTD2RcF
 zXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bY/V/GmjTMwSsbRxOp3cbtrLAwvSrthIWK239p8DTzE=;
 b=q317/OYr1e1PywHPGgO6f7oeVRy9qnW8aOL/KT0qshGC8b0jli6ncy+5lSp7StPem+
 8rsoZfN1Zmt9o1jyeVWGanFq2HAFsN/jnjxgl6L41ZNcBMVYftwj9Kqj2HgEf4D4++rQ
 +0Q2md/r2wVXyfKJFTgIHUzlDbKsOZYMVwyK3+TnsuZiaZSseEhmaZvOIAQTNCPZYM7/
 U+MRDKi3GcVPHdEYJEl/HIItKHg938sdNMLdfdEcVKKwW8aMY3l589FCw0D39/4/4GhY
 uGWszQh0iGALGLCU/h+cUmyB3XgcWGmaQVw5W0RG41emB5qGHno53ZOj/QndzNBEOV9x
 NPZw==
X-Gm-Message-State: APjAAAVtxy13A7Y3/t8DhnZfPXo0CMo9GE9rv6hJ3hKYk1WvtSpOTRCh
 06wMhL7B5vLDrlKbZBRGAM8dHcOJVnFWRzzxisLzzA==
X-Google-Smtp-Source: APXvYqw9+BzaxVxd2DUSSsXFL62z/QnSA7USFL10oM2Qj5OVLuJYfzZYIWeOtQv0bwvpDBrOXEPvm4eU1mGmc4LZDEQ=
X-Received: by 2002:a17:902:6948:: with SMTP id
 k8mr55585012plt.223.1582657832765; 
 Tue, 25 Feb 2020 11:10:32 -0800 (PST)
MIME-Version: 1.0
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
In-Reply-To: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 25 Feb 2020 11:10:21 -0800
Message-ID: <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_111036_312845_8592AD51 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgOToyMiBQTSBTdGVmYW4gQWduZXIgPHN0ZWZhbkBhZ25l
ci5jaD4gd3JvdGU6Cj4KPiBDbGFuZydzIGludGVncmF0ZWQgYXNzZW1ibGVyIGRvZXMgbm90IGFs
bG93IHRvIHRvIHVzZSB0aGUgbWNyCj4gaW5zdHJ1Y3Rpb24gdG8gYWNjZXNzIGZsb2F0aW5nIHBv
aW50IGNvLXByb2Nlc3NvciByZWdpc3RlcnM6Cj4gYXJjaC9hcm0vdmZwL3ZmcG1vZHVsZS5jOjM0
MjoyOiBlcnJvcjogaW52YWxpZCBvcGVyYW5kIGZvciBpbnN0cnVjdGlvbgo+ICAgICAgICAgZm14
cihGUEVYQywgZnBleGMgJiB+KEZQRVhDX0VYfEZQRVhDX0RFWHxGUEVYQ19GUDJWfEZQRVhDX1ZW
fEZQRVhDX1RSQVBfTUFTSykpOwo+ICAgICAgICAgXgo+IGFyY2gvYXJtL3ZmcC92ZnBpbnN0ci5o
Ojc5OjY6IG5vdGU6IGV4cGFuZGVkIGZyb20gbWFjcm8gJ2ZteHInCj4gICAgICAgICBhc20oIm1j
ciBwMTAsIDcsICUwLCAiIHZmcHJlZyhfdmZwXykgIiwgY3IwLCAwIEAgZm14ciAgICIgI192ZnBf
ICIsICUwIiBcCj4gICAgICAgICAgICAgXgo+IDxpbmxpbmUgYXNtPjoxOjY6IG5vdGU6IGluc3Rh
bnRpYXRlZCBpbnRvIGFzc2VtYmx5IGhlcmUKPiAgICAgICAgIG1jciBwMTAsIDcsIHIwLCBjcjgs
IGNyMCwgMCBAIGZteHIgICAgICBGUEVYQywgcjAKPiAgICAgICAgICAgICBeCj4KPiBUaGUgR05V
IGFzc2VtYmxlciBzdXBwb3J0cyB0aGUgLmZwdSBkaXJlY3RpdmUgYXQgbGVhc3Qgc2luY2UgMi4x
NyAod2hlbgo+IGRvY3VtZW50YXRpb24gaGFzIGJlZW4gYWRkZWQpLiBTaW5jZSBMaW51eCByZXF1
aXJlcyBiaW51dGlscyAyLjIxIGl0IGlzCj4gc2FmZSB0byB1c2UgLmZwdSBkaXJlY3RpdmUuIFVz
ZSB0aGUgLmZwdSBkaXJlY3RpdmUgYW5kIG1uZW1vbmljcyBmb3IgVkZQCj4gcmVnaXN0ZXIgYWNj
ZXNzLgo+Cj4gVGhpcyBhbGxvd3MgdG8gYnVpbGQgdmZwbW9kdWxlLmMgd2l0aCBDbGFuZyBhbmQg
aXRzIGludGVncmF0ZWQgYXNzZW1ibGVyLgo+Cj4gTGluazogaHR0cHM6Ly9naXRodWIuY29tL0Ns
YW5nQnVpbHRMaW51eC9saW51eC9pc3N1ZXMvOTA1Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIEFn
bmVyIDxzdGVmYW5AYWduZXIuY2g+Cj4gLS0tCj4gIGFyY2gvYXJtL3ZmcC92ZnBpbnN0ci5oIHwg
MTIgKysrKy0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vdmZwL3ZmcGluc3RyLmggYi9hcmNo
L2FybS92ZnAvdmZwaW5zdHIuaAo+IGluZGV4IDM4ZGMxNTRlMzlmZi4uNzk5Y2NmMDY1NDA2IDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtL3ZmcC92ZnBpbnN0ci5oCj4gKysrIGIvYXJjaC9hcm0vdmZw
L3ZmcGluc3RyLmgKPiBAQCAtNjIsMjEgKzYyLDE3IEBACj4gICNkZWZpbmUgRlBTQ1JfQyAoMSA8
PCAyOSkKPiAgI2RlZmluZSBGUFNDUl9WICAgICAgICAoMSA8PCAyOCkKPgo+IC0vKgo+IC0gKiBT
aW5jZSB3ZSBhcmVuJ3QgYnVpbGRpbmcgd2l0aCAtbWZwdT12ZnAsIHdlIG5lZWQgdG8gY29kZQo+
IC0gKiB0aGVzZSBpbnN0cnVjdGlvbnMgdXNpbmcgdGhlaXIgTVJDL01DUiBlcXVpdmFsZW50cy4K
PiAtICovCj4gLSNkZWZpbmUgdmZwcmVnKF92ZnBfKSAjX3ZmcF8KPiAtCj4gICNkZWZpbmUgZm1y
eChfdmZwXykgKHsgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgIHUzMiBfX3Y7ICAgICAgICAg
ICAgICAgICAgICAgICAgXAo+IC0gICAgICAgYXNtKCJtcmMgcDEwLCA3LCAlMCwgIiB2ZnByZWco
X3ZmcF8pICIsIGNyMCwgMCBAIGZtcnggICAlMCwgIiAjX3ZmcF8gICAgXAo+ICsgICAgICAgYXNt
KCIuZnB1ICAgICAgIHZmcHYyXG4iICAgICAgICBcCj4gKyAgICAgICAgICAgInZtcnMgICAgICAg
JTAsICIgI192ZnBfICAgIFwKPiAgICAgICAgICAgICA6ICI9ciIgKF9fdikgOiA6ICJjYyIpOyAg
ICAgXAo+ICAgICAgICAgX192OyAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gICB9KQo+
Cj4gICNkZWZpbmUgZm14cihfdmZwXyxfdmFyXykgICAgICAgICAgICAgIFwKPiAtICAgICAgIGFz
bSgibWNyIHAxMCwgNywgJTAsICIgdmZwcmVnKF92ZnBfKSAiLCBjcjAsIDAgQCBmbXhyICAgIiAj
X3ZmcF8gIiwgJTAiIFwKPiArICAgICAgIGFzbSgiLmZwdSAgICAgICB2ZnB2MlxuIiAgICAgICAg
XAo+ICsgICAgICAgICAgICJ2bXNyICAgICAgICIgI192ZnBfICIsICUwIiBcCj4gICAgICAgICAg
ICA6IDogInIiIChfdmFyXykgOiAiY2MiKQo+Cj4gIHUzMiB2ZnBfc2luZ2xlX2NwZG8odTMyIGlu
c3QsIHUzMiBmcHNjcik7Cj4gLS0KCkhpIFN0ZWZhbiwKVGhhbmtzIGZvciB0aGUgcGF0Y2guICBS
ZWFkaW5nIHRocm91Z2g6Ci0gRk1SWCwgRk1YUiwgYW5kIEZNU1RBVDoKaHR0cDovL2luZm9jZW50
ZXIuYXJtLmNvbS9oZWxwL2luZGV4LmpzcD90b3BpYz0vY29tLmFybS5kb2MuZHVpMDA2OGIvQmNm
YmRpaGkuaHRtbAotIFZNUlMgYW5kIFZNU1I6Cmh0dHA6Ly9pbmZvY2VudGVyLmFybS5jb20vaGVs
cC9pbmRleC5qc3A/dG9waWM9L2NvbS5hcm0uZG9jLmR1aTAyMDRoL0JjZmJkaWhpLmh0bWwKClNo
b3VsZCBhIG1hY3JvIGNhbGxlZCBgZm1yeGAgdGhhdCBoYWQgYSBjb21tZW50IGFib3V0IGBmbXJ4
YCBiZSB1c2luZwpgdm1yc2AgaW4gcGxhY2Ugb2YgYGZtcnhgPwoKSXQgbG9va3MgbGlrZSBDbGFu
ZyB0cmVhdHMgdGhlbSB0aGUgc2FtZSwgYnV0IEdDQyBrZWVwcyB0aGVtIHNlcGFyYXRlOgpodHRw
czovL2dvZGJvbHQub3JnL3ovWUttU0FzCkFoLCB0aGlzIGlzIG9ubHkgd2hlbiBzdHJlYW1pbmcg
dG8gYXNzZW1ibHkuIExvb2tzIGxpa2UgdGhleSBoYXZlIHRoZQpzYW1lIGVuY29kaW5nLCBhbmQg
cHJvZHVjZSB0aGUgc2FtZSBkaXNhc3NlbWJseS4gKEdvZGJvbHQgZW1pdHMKYXNzZW1ibHkgYnkg
ZGVmYXVsdCwgYW5kIGhhcyB0aGUgb3B0aW9uIHRvIGNvbXBpbGUsIHRoZW4gZGlzYXNzZW1ibGUp
LgpJZiBJIHRha2UgbXkgY2FzZSBmcm9tIGdvZGJvbHQgYWJvdmU6CgrinpwgIC90bXAgYXJtLWxp
bnV4LWdudWVhYmloZi1nY2MgLU8yIC1jIHguYwrinpwgIC90bXAgbGx2bS1vYmpkdW1wIC1kciB4
Lm8KCngubzogZmlsZSBmb3JtYXQgZWxmMzItYXJtLWxpdHRsZQoKCkRpc2Fzc2VtYmx5IG9mIHNl
Y3Rpb24gLnRleHQ6CgowMDAwMDAwMCBiYXI6CiAgICAgICAwOiBmMSBlZSAxMCAwYSAgICAgICAg
ICAgICAgICAgIHZtcnMgcjAsIGZwc2NyCiAgICAgICA0OiA3MCA0NyAgICAgICAgICAgICAgICAg
ICAgICAgIGJ4IGxyCiAgICAgICA2OiAwMCBiZiAgICAgICAgICAgICAgICAgICAgICAgIG5vcAoK
MDAwMDAwMDggYmF6OgogICAgICAgODogZjEgZWUgMTAgMGEgICAgICAgICAgICAgICAgICB2bXJz
IHIwLCBmcHNjcgogICAgICAgYzogNzAgNDcgICAgICAgICAgICAgICAgICAgICAgICBieCBscgog
ICAgICAgZTogMDAgYmYgICAgICAgICAgICAgICAgICAgICAgICBub3AKClNvIGluZGVlZCBhIHNp
bWlsYXIgZW5jb2RpbmcgZXhpc3RzIGZvciB0aGUgdHdvIGRpZmZlcmVudCBhc3NlbWJsZXIKaW5z
dHJ1Y3Rpb25zLgpSZXZpZXdlZC1ieTogTmljayBEZXNhdWxuaWVycyA8bmRlc2F1bG5pZXJzQGdv
b2dsZS5jb20+CgoKLS0gClRoYW5rcywKfk5pY2sgRGVzYXVsbmllcnMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
