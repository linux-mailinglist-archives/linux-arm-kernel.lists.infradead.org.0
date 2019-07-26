Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 644F97645B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S69KIGGoUotq08DZRsEU9us5KgTnd90zhGp/TLyvmG8=; b=tKE6+0BANf7M/i
	699adx2sWvimmEllpvXAXTZ7J1/Yp9sRQj42lMHWP0QU0cH8O8P/sYEu6JHjXlpc4q19U0ChIdbZS
	3SIj/6AciaKEOedQaEtEIDgwEnYxjOS7ypBbsaAqpff4K/g5FXgkAfsJ1zyQEX2U0QbRuqCNbAHg1
	rSsFcIKzrglrq6btwfoCJo3c5+h4t+Tk0QdzvSlxo1VH+jn+96Qxx87a+XBgthcDz72Il7M71gkKV
	jqyRpkjb1vYXaZz34H0SSX0+hvaGESFSAH9ybZ28ADgZOQWoCbovBAXYeRYzC0ALhxdd/fL2DV9gd
	HOS830fYxckBuh3L5FfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyO7-0001kv-4l; Fri, 26 Jul 2019 11:27:51 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyNa-0001YJ-Bu
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:27:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id c9so36797550lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z9HY70wJXKPs0Bv25UYCD9x0V9nBKcfnlqiIvTFUOZc=;
 b=c91SAV8uhLOcljWjQ8Ab9ri7kVRPcfAovbVniOu6W3Y7+7Si7G3ZkkP7PwDPvbwwZO
 tXE9mCuBPj28+YfwZhE9ZBUX0mlLJ2ZhgHnb9RoKMsj9lqK6gzK9osC9DQ1o3CBtbldM
 THIcpaGSet5VHt7d07KdP9xi4rTQVkmqyt5Q4dRIphqGXVuJvxTFnVBLNL7Ln/5KT/79
 KN/XJg9iOqLN/Ht9Lmb0TwwZ6uPeZjdsSlivfBcZSR5tO3redUCcob0WqfNxyx/iHSOh
 ZlUePfMRzln5doV68I92erwnugKUcHqGY/U+5iwOMomiq5Tco6Z3dJtXLTcJ/2JbF9ru
 d+Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z9HY70wJXKPs0Bv25UYCD9x0V9nBKcfnlqiIvTFUOZc=;
 b=Q879cLDUKOHOx3F/75qs8AodJW0AEPfCWOqYfU9tSM3+uBawvnjY/9je+71dYJGXLX
 7kHdnTTMMZXk3Odl6kfs8/lHFoKbLVfvHP3SkdszybdLCfnTDjAlTt+Ld4fY0KBP5G49
 ZIo26WJvMV2qV3WQgX8OeGqLxfe6S4sgAKlHUApIo6TEVY6v8AupWOgotgosEAt+fgbn
 Ptq8hJSnoh1uEut6mxUjZnIBmDHNH1/lkp3ChwCbm/VcwRdwMHmWvRmto4lgvAbR1KCX
 sJqXI9QnDyouLUDFwITjyQWa9fbftqFMlG41BfZOoxAD7hI719ZNXSGiz4AEk/opbWXw
 1EnA==
X-Gm-Message-State: APjAAAX3rY/5CZuIZ24TTWQ1TOKVn8tBLCVipBGYNWnaxd55m5OWL68P
 BhMJL209LGXvYQ1gcdm33g8n2w==
X-Google-Smtp-Source: APXvYqz0zDV4DU1xCLE+wRCoXoQJs4j/uYCwZ1M3A6PeINVW1+FbpvuzjWzQ55z1yFlxnkhf1+WfaA==
X-Received: by 2002:ac2:419a:: with SMTP id z26mr44458557lfh.21.1564140436505; 
 Fri, 26 Jul 2019 04:27:16 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id j90sm9987780ljb.29.2019.07.26.04.27.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:27:15 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: maz@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH 2/2] arm64: KVM: hyp: debug-sr: Mark expected switch
 fall-through
Date: Fri, 26 Jul 2019 13:27:10 +0200
Message-Id: <20190726112710.19051-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042718_563050_1FD01DEC 
X-CRM114-Status: UNSURE (   8.00  )
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
Cc: Anders Roxell <anders.roxell@linaro.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9s
bG93aW5nIHdhcm5pbmdzCndhcyBzdGFydGluZyB0byBzaG93IHVwOgoKLi4vYXJjaC9hcm02NC9r
dm0vaHlwL2RlYnVnLXNyLmM6IEluIGZ1bmN0aW9uIOKAmF9fZGVidWdfc2F2ZV9zdGF0ZeKAmToK
Li4vYXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmM6MjA6MTk6IHdhcm5pbmc6IHRoaXMgc3Rh
dGVtZW50IG1heSBmYWxsCiB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICBjYXNl
IDE1OiBwdHJbMTVdID0gcmVhZF9kZWJ1ZyhyZWcsIDE1KTsgICBcCi4uL2FyY2gvYXJtNjQva3Zt
L2h5cC9kZWJ1Zy1zci5jOjExMzoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYc2F2
ZV9kZWJ1Z+KAmQogIHNhdmVfZGVidWcoZGJnLT5kYmdfYmNyLCBkYmdiY3IsIGJycHMpOwogIF5+
fn5+fn5+fn4KLi4vYXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmM6MjE6Mjogbm90ZTogaGVy
ZQogIGNhc2UgMTQ6IHB0clsxNF0gPSByZWFkX2RlYnVnKHJlZywgMTQpOyAgIFwKICBefn5+Ci4u
L2FyY2gvYXJtNjQva3ZtL2h5cC9kZWJ1Zy1zci5jOjExMzoyOiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8g4oCYc2F2ZV9kZWJ1Z+KAmQogIHNhdmVfZGVidWcoZGJnLT5kYmdfYmNyLCBkYmdi
Y3IsIGJycHMpOwogIF5+fn5+fn5+fn4KLi4vYXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmM6
MjE6MTk6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsCiB0aHJvdWdoIFstV2ltcGxp
Y2l0LWZhbGx0aHJvdWdoPV0KICBjYXNlIDE0OiBwdHJbMTRdID0gcmVhZF9kZWJ1ZyhyZWcsIDE0
KTsgICBcCi4uL2FyY2gvYXJtNjQva3ZtL2h5cC9kZWJ1Zy1zci5jOjExMzoyOiBub3RlOiBpbiBl
eHBhbnNpb24gb2YgbWFjcm8g4oCYc2F2ZV9kZWJ1Z+KAmQogIHNhdmVfZGVidWcoZGJnLT5kYmdf
YmNyLCBkYmdiY3IsIGJycHMpOwogIF5+fn5+fn5+fn4KLi4vYXJjaC9hcm02NC9rdm0vaHlwL2Rl
YnVnLXNyLmM6MjI6Mjogbm90ZTogaGVyZQogIGNhc2UgMTM6IHB0clsxM10gPSByZWFkX2RlYnVn
KHJlZywgMTMpOyAgIFwKICBefn5+Ci4uL2FyY2gvYXJtNjQva3ZtL2h5cC9kZWJ1Zy1zci5jOjEx
MzoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYc2F2ZV9kZWJ1Z+KAmQogIHNhdmVf
ZGVidWcoZGJnLT5kYmdfYmNyLCBkYmdiY3IsIGJycHMpOwogIF5+fn5+fn5+fn4KClJld29yayB0
byBhZGQgYSAnYnJlYWs7JyB3aGVyZSB0aGUgY29tcGlsZXIgd2FybmVkIGFib3V0IGZhbGwtdGhy
b3VnaC4KCkZpeGVzOiBkOTM1MTJlZjBmMGUgKCJNYWtlZmlsZTogR2xvYmFsbHkgZW5hYmxlIGZh
bGwtdGhyb3VnaCB3YXJuaW5nIikKU2lnbmVkLW9mZi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJz
LnJveGVsbEBsaW5hcm8ub3JnPgotLS0KIGFyY2gvYXJtNjQva3ZtL2h5cC9kZWJ1Zy1zci5jIHwg
MzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzAgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva3ZtL2h5cC9kZWJ1Zy1zci5jIGIv
YXJjaC9hcm02NC9rdm0vaHlwL2RlYnVnLXNyLmMKaW5kZXggMjY3ODFkYTNhZDNlLi4wZmM5ODcy
YTE0NjcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQva3ZtL2h5cC9kZWJ1Zy1zci5jCisrKyBiL2Fy
Y2gvYXJtNjQva3ZtL2h5cC9kZWJ1Zy1zci5jCkBAIC0xOCw0MCArMTgsNzAgQEAKICNkZWZpbmUg
c2F2ZV9kZWJ1ZyhwdHIscmVnLG5yKQkJCQkJCVwKIAlzd2l0Y2ggKG5yKSB7CQkJCQkJCVwKIAlj
YXNlIDE1OglwdHJbMTVdID0gcmVhZF9kZWJ1ZyhyZWcsIDE1KTsJCQlcCisJCQkvKiBGYWxsIHRo
cm91Z2ggKi8JCQkJXAogCWNhc2UgMTQ6CXB0clsxNF0gPSByZWFkX2RlYnVnKHJlZywgMTQpOwkJ
CVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJY2FzZSAxMzoJcHRyWzEzXSA9IHJlYWRf
ZGVidWcocmVnLCAxMyk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDEy
OglwdHJbMTJdID0gcmVhZF9kZWJ1ZyhyZWcsIDEyKTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2gg
Ki8JCQkJXAogCWNhc2UgMTE6CXB0clsxMV0gPSByZWFkX2RlYnVnKHJlZywgMTEpOwkJCVwKKwkJ
CS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJY2FzZSAxMDoJcHRyWzEwXSA9IHJlYWRfZGVidWco
cmVnLCAxMCk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDk6CQlwdHJb
OV0gPSByZWFkX2RlYnVnKHJlZywgOSk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwK
IAljYXNlIDg6CQlwdHJbOF0gPSByZWFkX2RlYnVnKHJlZywgOCk7CQkJXAorCQkJLyogRmFsbCB0
aHJvdWdoICovCQkJCVwKIAljYXNlIDc6CQlwdHJbN10gPSByZWFkX2RlYnVnKHJlZywgNyk7CQkJ
XAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDY6CQlwdHJbNl0gPSByZWFkX2Rl
YnVnKHJlZywgNik7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDU6CQlw
dHJbNV0gPSByZWFkX2RlYnVnKHJlZywgNSk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJ
CVwKIAljYXNlIDQ6CQlwdHJbNF0gPSByZWFkX2RlYnVnKHJlZywgNCk7CQkJXAorCQkJLyogRmFs
bCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDM6CQlwdHJbM10gPSByZWFkX2RlYnVnKHJlZywgMyk7
CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDI6CQlwdHJbMl0gPSByZWFk
X2RlYnVnKHJlZywgMik7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDE6
CQlwdHJbMV0gPSByZWFkX2RlYnVnKHJlZywgMSk7CQkJXAorCQkJLyogRmFsbCB0aHJvdWdoICov
CQkJCVwKIAlkZWZhdWx0OglwdHJbMF0gPSByZWFkX2RlYnVnKHJlZywgMCk7CQkJXAogCX0KIAog
I2RlZmluZSByZXN0b3JlX2RlYnVnKHB0cixyZWcsbnIpCQkJCQlcCiAJc3dpdGNoIChucikgewkJ
CQkJCQlcCiAJY2FzZSAxNToJd3JpdGVfZGVidWcocHRyWzE1XSwgcmVnLCAxNSk7CQkJXAorCQkJ
LyogRmFsbCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDE0Ogl3cml0ZV9kZWJ1ZyhwdHJbMTRdLCBy
ZWcsIDE0KTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNhc2UgMTM6CXdyaXRl
X2RlYnVnKHB0clsxM10sIHJlZywgMTMpOwkJCVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlc
CiAJY2FzZSAxMjoJd3JpdGVfZGVidWcocHRyWzEyXSwgcmVnLCAxMik7CQkJXAorCQkJLyogRmFs
bCB0aHJvdWdoICovCQkJCVwKIAljYXNlIDExOgl3cml0ZV9kZWJ1ZyhwdHJbMTFdLCByZWcsIDEx
KTsJCQlcCisJCQkvKiBGYWxsIHRocm91Z2ggKi8JCQkJXAogCWNhc2UgMTA6CXdyaXRlX2RlYnVn
KHB0clsxMF0sIHJlZywgMTApOwkJCVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJY2Fz
ZSA5OgkJd3JpdGVfZGVidWcocHRyWzldLCByZWcsIDkpOwkJCVwKKwkJCS8qIEZhbGwgdGhyb3Vn
aCAqLwkJCQlcCiAJY2FzZSA4OgkJd3JpdGVfZGVidWcocHRyWzhdLCByZWcsIDgpOwkJCVwKKwkJ
CS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJY2FzZSA3OgkJd3JpdGVfZGVidWcocHRyWzddLCBy
ZWcsIDcpOwkJCVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJY2FzZSA2OgkJd3JpdGVf
ZGVidWcocHRyWzZdLCByZWcsIDYpOwkJCVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJ
Y2FzZSA1OgkJd3JpdGVfZGVidWcocHRyWzVdLCByZWcsIDUpOwkJCVwKKwkJCS8qIEZhbGwgdGhy
b3VnaCAqLwkJCQlcCiAJY2FzZSA0OgkJd3JpdGVfZGVidWcocHRyWzRdLCByZWcsIDQpOwkJCVwK
KwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJY2FzZSAzOgkJd3JpdGVfZGVidWcocHRyWzNd
LCByZWcsIDMpOwkJCVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlcCiAJY2FzZSAyOgkJd3Jp
dGVfZGVidWcocHRyWzJdLCByZWcsIDIpOwkJCVwKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwkJCQlc
CiAJY2FzZSAxOgkJd3JpdGVfZGVidWcocHRyWzFdLCByZWcsIDEpOwkJCVwKKwkJCS8qIEZhbGwg
dGhyb3VnaCAqLwkJCQlcCiAJZGVmYXVsdDoJd3JpdGVfZGVidWcocHRyWzBdLCByZWcsIDApOwkJ
CVwKIAl9CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
