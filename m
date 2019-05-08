Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740ED17874
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkWAlIDKWK1E+pw/2Q6Ygy8LSuPuFXsCxIbHj4GamA0=; b=KTq/jxPF+pv82/
	afwkRmzo3kSZFLtE263GZ44n1tLF8vQxIF9j1CdoRRYcVB5ICyOs1qZXyx9jDrnup+EstiaIphOWU
	72XCHmtEIBDu4hE6biGevOAO92UN/GtjrGNDvzv7EI6urc6xjTTtvxIxu9V2OKp+n2AjsAz6cwKjV
	Cjkt64r1d4E+UThBM0mZx0jPl6XRI0GSkGj5P4ESq4qwCXYZvLfxxVj60QoXkkKeFFb6z+Opp6Zze
	duiW+8xmBNhA5F2hJYu1eLG9tCSanAOnJXIv0P2MnDRQ1ADmX+P/qTbHlI+18eU2+MrFMrNz1yxOb
	rxHa6ygpoCKXl9K93tOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKtf-0008Mu-SP; Wed, 08 May 2019 11:38:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKtY-0008MU-Pw
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 11:37:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id c5so1520907wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 04:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=eeVbE/nScJBLag5J/5uF3rhFiymQVd2Zd14j7hKs2Go=;
 b=KECUZFNIH3rYUOtX1dlvmyFlTibofR3dC0G3z4LgOfu7EL81dRHDuGbinISBewHici
 WTfqWBaOrepKmaPbAJab2EMLu2RaWGJ3wa3iyM7/eXcAHCDp5t34zDdlfgGdq0D77Q2m
 19eRcJDyjmG6ZEfwbWO1ftM7r8fq7DFqfF87Xum9x1AHnDmhoEGCPc2qdIJTf0RaHSXT
 7X1Xhk/AAoKKgjvae0fAl3bsa/jHjgZjWZIY8xlwyONYNTtN5rfYlsNhST6bqwbRRVyt
 PgB1Vf9FG6amQy47sGdXd/Bv9PGr92BaUTNcWL+kwxvOM0Elm9FVE9p9IMpDMO+bFXs8
 5Hmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=eeVbE/nScJBLag5J/5uF3rhFiymQVd2Zd14j7hKs2Go=;
 b=oPWc+irgvmr5C7hzuOCGsxme/vE8WIRvZlwbkjAnIkeKpBSmDJBU10zvyIzUcDkCUN
 vjmu9gdVUuqodxXB81za7DqnFHLR9f4m/N1Jy1IWdeAhgNFpLzmnSCdLwgG+QzVxrJR6
 mjmx2ZoMCbFhl+RHpmh0oMyRVbANyrimIVzUsGaXBkk5VAvsKBeIqjrtsltUIenTMVLz
 vAwfg8KkSzgln8uEkXGErqg5eJzfjmx1ZaywiNr4iTy/ItjvGOZpaSkZBvMiPE/87NNW
 e4/KFuyUIDvt7Bv3xQElEnIjL+78xhiaoEtNMz/5G6IFRUM4p/qhCJJXMhQXyH8JgcoD
 VD2g==
X-Gm-Message-State: APjAAAX8feExDYKwH0FQj2nUjUS9wscan6xir4o2eDj2cjudRlJJHXB3
 3gzJV8Dj38pgx4+nP25bte1hcv2mRKk=
X-Google-Smtp-Source: APXvYqylJd9JgQDs4no8oS1ib+tuQIB3A9RO89mbhrVWeCUcsCxdG1V6qUglLUHQmf1jJlbVfEJ7/g==
X-Received: by 2002:adf:eb8e:: with SMTP id t14mr5248477wrn.113.1557315475173; 
 Wed, 08 May 2019 04:37:55 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id l21sm1379871wmh.35.2019.05.08.04.37.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 04:37:54 -0700 (PDT)
Date: Wed, 8 May 2019 12:37:52 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] Remove MODULE_ALIAS() calls that take undefined macro
Message-ID: <20190508113752.GE31645@dell>
References: <1557163697-17882-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557163697-17882-1-git-send-email-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_043756_848435_1D1AC65A 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kbuild@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, Alexey Gladkov <gladkov.alexey@gmail.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwNyBNYXkgMjAxOSwgTWFzYWhpcm8gWWFtYWRhIHdyb3RlOgoKPiBUaGVzZSBmaWxl
cyBkbyBub3QgZGVmaW5lIChVU0JIU18pRFJJVkVSX05BTUUuIFlldCwgdGhleSBjYW4gYmUKPiBz
dWNjZXNzZnVsbHkgY29tcGlsZWQgYmVjYXVzZSB0aGV5IGFyZSBuZXZlciBidWlsdCBhcyBhIG1v
ZHVsZSBieQo+IGFueW9uZSwgaS5lLCB0aGUgTU9EVUxFX0FMSUFTKCkgY2FsbHMgYXJlIGFsd2F5
cyBuby1vcC4KPiAKPiBBIHByb2JsZW0gc2hvd2VkIHVwIHdoZW4gYSBwYXRjaCAibW9kdWxlcGFy
YW06IFNhdmUgaW5mb3JtYXRpb24gYWJvdXQKPiBidWlsdC1pbiBtb2R1bGVzIGluIHNlcGFyYXRl
IGZpbGUiIGlzIGFwcGxpZWQuIFdpdGggdGhpcyBuZXcgZmVhdHVyZSwKPiBNT0RVTEVfKigpIGFy
ZSBwb3B1bGF0ZWQgZXZlbiBpZiB0aGUgY2FsbGVycyBhcmUgYnVpbHQtaW4uCj4gCj4gVG8gYXZv
aWQgdGhlIGJ1aWxkIGVycm9ycywgdGhlIGxpbmVzIHJlZmVyZW5jaW5nIHRvIHRoZSB1bmRlZmlu
ZWQKPiBtYWNybyBtdXN0IGJlIHJlbW92ZWQuCj4gCj4gVGhlIGNvbXBsZXRlIGZpeCBpcyB0byBy
ZW1vdmUgYWxsIE1PRFVMRV8qIGFuZCAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gbGlrZSBt
YW55ICJtYWtlIC4uLiBleHBsaWNpdGx5IG5vbi1tb2R1bGFyIiBjb21taXRzIGRpZC4KPiAKPiBG
b3Igbm93LCBJIGFtIHRvdWNoaW5nIHRoZSBvZmZlbmRpbmcgbGluZXMuCj4gCj4gUmVwb3J0ZWQt
Ynk6IFN0ZXBoZW4gUm90aHdlbGwgPHNmckBjYW5iLmF1dWcub3JnLmF1Pgo+IFNpZ25lZC1vZmYt
Ynk6IE1hc2FoaXJvIFlhbWFkYSA8eWFtYWRhLm1hc2FoaXJvQHNvY2lvbmV4dC5jb20+Cj4gLS0t
Cj4gCj4gSSB3aWxsIGluc2VydCB0aGlzIGNvbW1pdCBiZWZvcmUKPiAibW9kdWxlcGFyYW06IFNh
dmUgaW5mb3JtYXRpb24gYWJvdXQgYnVpbHQtaW4gbW9kdWxlcyBpbiBzZXBhcmF0ZSBmaWxlIgo+
IAo+IAo+ICBhcmNoL2FybS9wbGF0LW9tYXAvZG1hLmMgICAgICAgICAgfCAxIC0KPiAgZHJpdmVy
cy9jbG9ja3NvdXJjZS90aW1lci10aS1kbS5jIHwgMSAtCj4gIGRyaXZlcnMvbWZkL29tYXAtdXNi
LXRsbC5jICAgICAgICB8IDEgLQoKRm9yIG15IG93biByZWZlcmVuY2U6CiAgQWNrZWQtZm9yLU1G
RC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+ad
jueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
