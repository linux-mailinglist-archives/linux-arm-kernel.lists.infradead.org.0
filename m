Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E08276485
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xakaepiORHII1DgnVn8nrjkwDR5OsbBeL8mRPDPeH7U=; b=fgsarrBqUZ7bHu
	DV6FkWoOMMte4hmOs/4xcggHpxt0jY1KwUCcp/Kan3na4Lza0BmEXveNLzgjNYQ62j4ZeU1/m8bAU
	OW1mBZVDSd0KRQM7fdt1ZAHl9p109ZlY/xUxHYNGPE0DdNWs/kY16elKDwllUHBbeuvYh8i0C8m2J
	wNYX9n2iH8DjMEqWNujB+fIRcxIPXasAoeN5owwFbhdZTBMOgJG+tIvxtOO7mhnEEwtlzkDjoV2QM
	cGjDHbudez0gaN8TrieVCtuNuUtz8SFZ0mpo1yN+BQVNMRW+SeBJ+1XG/BywCCw5vnAvc8uCY4CtM
	NMiieuZh1JcwGknmMRTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyQh-00053L-Ib; Fri, 26 Jul 2019 11:30:31 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyOT-0002Hb-GB
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:28:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id v85so36813521lfa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z9BcHX1v0OYZtD+fOK5bR3iP5Bzz548SH0Qfuyk3u+M=;
 b=cyWwp9fJP19UoMGz9ozXhDRzbbe71Ox1BNxqfqJHcs+M2C7zqmX99TGYs/etpPyptI
 ky7wdp9/Qddn/czFwkgjlUz1gwSELt2+LGXRhe+pdvLqYxXC06fCbOldfaPm6hpWdP77
 ZZQku0IkEG2Z/1DNOXZS4wpuT6hHQsHDRgIzWccW28SZ+XVK+9njzTCM+3vv/tkswX1e
 Ci/jzIwZt6kclF/FxcjlYH6SYv59ApVqKvlTl1ILvaCM6qYPtUgZIpIAc2zMrVSOhJrZ
 R4s8hnHgjUZNMD2NT8+TCnx6u58Uzm/QdaSw1OHjF+PURt8z76b7If9U0mXHxFsxAzQe
 mP2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z9BcHX1v0OYZtD+fOK5bR3iP5Bzz548SH0Qfuyk3u+M=;
 b=rX5gAlewGruOK57o3ZTHlRWmfh5cEogOcXTjMtZkLB+xWLA6KoQl5oBeGD5dzemyle
 e4x7tnpZNqWF2wC65OjrdSN7w9ELnmLJy7OLwaMV0TuGtJijxea0bvC6tMWsqS4BJgkN
 56njzr1MxNpcmiAWy0QLP9C6xlDeeqcFIbSwNtnjICvW5oTHruv6qQP0AesAwG8aB/Qe
 x+wui0rs61h7Txd9xA5AxdH3LFp6gMKzbub6ctTaa5z7WaRmjsJy5qpc6DWsWSmDUmre
 MAkZSLeBrmwGIgw52d6A3Z5sK0dUBimCOlITEindEh+raNv4Ep0EL7LjSh4YsHPME6nx
 t1+Q==
X-Gm-Message-State: APjAAAW4a+Tg8GafbYmcMGrXMG8AXZbjPUyUyz4+ZSbU13DkwmHDC2Ax
 eMSvvWKUgzKecbW82LzNGHW3Kg==
X-Google-Smtp-Source: APXvYqxB8OuCSnAveM3yLRJ0PfblnXOWtOWvNxXLe9Ac4zMOsHOMqT4GraqxuwItrMX1jGyDWSK9Hw==
X-Received: by 2002:ac2:5337:: with SMTP id f23mr44970761lfh.15.1564140491963; 
 Fri, 26 Jul 2019 04:28:11 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id k124sm8319427lfd.60.2019.07.26.04.28.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:28:11 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: airlied@linux.ie,
	daniel@ffwll.ch,
	wens@csie.org
Subject: [PATCH 2/2] drm: sun4i: tcon: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:28:07 +0200
Message-Id: <20190726112807.19615-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042813_729494_8E0588AC 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9s
bG93aW5nIHdhcm5pbmcKd2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6CgouLi9kcml2ZXJzL2dwdS9k
cm0vc3VuNGkvc3VuNGlfdGNvbi5jOiBJbiBmdW5jdGlvbiDigJhzdW40aV90Y29uMF9tb2RlX3Nl
dF9kaXRoZXJpbmfigJk6Ci4uL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV90Y29uLmM6MzE2
Ojc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsCiB0aHJvdWdoIFstV2ltcGxpY2l0
LWZhbGx0aHJvdWdoPV0KICAgdmFsIHw9IFNVTjRJX1RDT04wX0ZSTV9DVExfTU9ERV9COwouLi9k
cml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfdGNvbi5jOjMxNzoyOiBub3RlOiBoZXJlCiAgY2Fz
ZSBNRURJQV9CVVNfRk1UX1JHQjY2Nl8xWDE4OgogIF5+fn4KClJld29yayBzbyB0aGF0IHRoZSBj
b21waWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJvdWdoLgoKRml4ZXM6IGQ5MzUxMmVm
MGYwZSAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdhcm5pbmciKQpT
aWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFyby5vcmc+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX3Rjb24uYyB8IDEgKwogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjRpX3Rjb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV90Y29uLmMKaW5kZXggNjkw
YWViODIyNzA0Li4wNGM3MjFkMGQzYjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdW40
aS9zdW40aV90Y29uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX3Rjb24uYwpA
QCAtMzE2LDYgKzMxNiw3IEBAIHN0YXRpYyB2b2lkIHN1bjRpX3Rjb24wX21vZGVfc2V0X2RpdGhl
cmluZyhzdHJ1Y3Qgc3VuNGlfdGNvbiAqdGNvbiwKIAkJLyogUiBhbmQgQiBjb21wb25lbnRzIGFy
ZSBvbmx5IDUgYml0cyBkZWVwICovCiAJCXZhbCB8PSBTVU40SV9UQ09OMF9GUk1fQ1RMX01PREVf
UjsKIAkJdmFsIHw9IFNVTjRJX1RDT04wX0ZSTV9DVExfTU9ERV9COworCQkvKiBGYWxsIHRocm91
Z2ggKi8KIAljYXNlIE1FRElBX0JVU19GTVRfUkdCNjY2XzFYMTg6CiAJY2FzZSBNRURJQV9CVVNf
Rk1UX1JHQjY2Nl8xWDdYM19TUFdHOgogCQkvKiBGYWxsIHRocm91Z2g6IGVuYWJsZSBkaXRoZXJp
bmcgKi8KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
