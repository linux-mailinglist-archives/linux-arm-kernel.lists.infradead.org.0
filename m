Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD59120F80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pY4nQdNwghh4HfvzKwUibIhhLVZ9DggFdoRpB+DO+kI=; b=H26owikM1fD1oK
	ZH8uMS81Vq4qaihXdBvbyhsGDZQYh5cvz9gTnmUdbYpK651uz+6t2NqKi8ktGnMpmmweZnbG/WphN
	VoGc/8DJ8zCeBjwb+YKh+RhePmhGy7TfdwtQ61x53UHm/T92zv7/xLI5xs2zG7RdIqXBjM1fnj94Z
	IzFhfERLa7Vx1Mw4voGKfPerKq7mf557gNF1bhjjxDtFJnUKWNBWYlCVJDcpSCpZWtQ1gY8a1B6be
	xMPq9Zs5Z90pO/vyZAQmRjfaWutw5WzdFlDT7ip+flYuhtyz+VmUwDz9O3/KmM6+ZmcJNmaZQXgXK
	H6AE6m8nWWAuPveXYSlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtHl-0005Fo-GA; Mon, 16 Dec 2019 16:31:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtHc-0005F7-7D
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:31:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so7443095wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 08:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=tOdF2v2tnPw84XyFs+DLGKUeb/1Y9vVZVEyHczF+0yg=;
 b=v75PO5hRYI3xifwe8IjjxOk8gXJmuPeTk8r/sebv8k5VXvGx2syxR0H2BKR6+vXv2H
 tXer/YdwJlAMyR6zpiMe252PHatrAG2aKC/69EAn0ZDmqxbtiiKDtszJ1HIgL3DgkLRd
 Y71pqiVAxrAniWaaLJfzb0lXCjDqpPY6au4dWY3RakMG9IrCBjprhEWpW4oSTXYKR6o2
 mdt/kTckQyZGRZ8izFK+O2fSRgUC3kCpertIvQABHrTv22+fA88ER9ECqNDpFSkkqWlN
 vlL4nqfNXTN3xHkdXsyHbGlOzAyx7gQHwXYJX9pETi/63ceapo1lij7b17hsEHuP5nWb
 PQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=tOdF2v2tnPw84XyFs+DLGKUeb/1Y9vVZVEyHczF+0yg=;
 b=obe3b+4DZ6Y37STTcBr5BfIwOJjqr6hk7m0PnvBRc4jHJ83Q4QRi8D+4jf1u++qPc/
 wonZrxGWlUTeWb731okqd2bDZSD1GZNRklcQ67KLK7Ztx+2N5d9HHf7pKtxyhPVZJiEj
 vJmAqiveS3GTSUUF+UHTmop22kYNS9g1jUhMT1psGFcl9QUlbTV/xuseLhiOnSxKuutU
 +3jJMuh9dWC0aJT0iSzjJcqC/OSN1etPI46+YM1QW0VhEF0bmWpP1FpFVGzjLcNXsbet
 WeWlYqdUWo6nFe/OgVq3T6XMeW+P5lAUivCqhjzbNkZaV2WwRr/uMHmlQ1Nj7R7Nsw1+
 axTg==
X-Gm-Message-State: APjAAAV2xGlwWblu3AbaXoTLgQ43bDwrOBmZhDunZvc5bQYKtOHs7Szr
 WTfJzdMfa6zj1lhn9Z8CzHzvzQ==
X-Google-Smtp-Source: APXvYqza4ODdROrK4+NXBOk9wQRDqm6YbdINa4RvvhiswJwObb7hlbCMFzyXEVki5DExzxaNMZShsg==
X-Received: by 2002:a05:600c:2218:: with SMTP id
 z24mr31321397wml.50.1576513902937; 
 Mon, 16 Dec 2019 08:31:42 -0800 (PST)
Received: from dell ([185.17.149.202])
 by smtp.gmail.com with ESMTPSA id w20sm21142865wmk.34.2019.12.16.08.31.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 08:31:42 -0800 (PST)
Date: Mon, 16 Dec 2019 16:31:41 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 5/6] dt-bindings: mfd: da9062: add regulator gpio
 enable/disable documentation
Message-ID: <20191216163141.GS2369@dell>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-6-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129172537.31410-6-m.felsch@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_083144_271227_C5D4DF4B 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, support.opensource@diasemi.com,
 linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org, andrew@aj.id.au,
 linus.walleij@linaro.org, lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, robh+dt@kernel.org, broonie@kernel.org,
 joel@jms.id.au, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyOSBOb3YgMjAxOSwgTWFyY28gRmVsc2NoIHdyb3RlOgoKPiBBdCB0aGUgZ3Bpby1i
YXNlZCByZWd1bGF0b3IgZW5hYmxlL2Rpc2FibGUgZG9jdW1lbnRhdGlvbi4gVGhpcyBwcm9wZXJ0
eQo+IGNhbiBiZSBhcHBsaWVkIHRvIGVhY2ggc3Vibm9kZSB3aXRoaW4gdGhlICdyZWd1bGF0b3Jz
JyBub2RlIHNvIGVhY2gKPiByZWd1bGF0b3IgY2FuIGJlIGNvbmZpZ3VyZWQgZGlmZmVyZW50bHku
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5k
ZT4KPiAtLS0KPiBDaGFuZ2Vsb2c6Cj4gdjM6Cj4gLSBhZGFwdCBiaW5kaW5nIGRlc2NyaXB0aW9u
Cj4gCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvZGE5MDYyLnR4dCB8
IDggKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKRm9yIG15IG93
biByZWZlcmVuY2U6CiAgQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2hu
aWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29D
cwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
