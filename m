Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BAB8691C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 20:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uotm02WOUy1qG946HQgsPNihs6wgg51vMjMRRd1s0fo=; b=tOX9XBVhpDdn96
	LSH3jDZwk/Jltpg9TjBFvzpDhbNDAdaxIweEcIl+c/eZQ28U0NVtF2TQwIhFP5RDcYZofam8gXHob
	9A8O2NPfvujq11R4SRwCBaibaV0+L1A60mEAbryFUSfDeWCAEfCrMG2UHHA20+aKorKsWbVc9J+JA
	vTc8F1H8R6/8bKfoAXabRHFg80sHy/ED3m+MOfpSw//3MxWlpAPSjTktz2607PUf2eG4xR3vdAA7m
	bvGtKezaj8J3h9+R18EYllfwhZ8INC/+zi6ZXKj4gpy6pS3eXEhicvoN+gzecsymy1N6GjUnXfN4A
	XmHu5fLzCB4KKFlnbIaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvnYF-0000VZ-QO; Thu, 08 Aug 2019 18:54:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvnY6-0000V3-PX
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 18:54:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id p17so95916489wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 11:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LOP3JntYPgb4inWvNcmObUOMv1XMpxVUdJZwgqRnphQ=;
 b=eaQQQALibSFNaHCTtKDmgbd6OwQvK7RGFuHD6JI1IJGY+L0d6D9+9MLhpt/Zcuuxpc
 R/pui5mbXDUebn2oc5ZC5exlpHHbetvpA1S82Ttkyxq7mAashE7oUxu31+OVvABkfyRD
 OStZAGKWnEQQp2enyfGH7YIAux0R9TkCZqClnmhTukh7FqHHWf6Wq2ETjGDoVzhBSsd1
 sRzPUdDD41PxRH4rPo/PZDqiB4spDOm7rkOLOgp+Qy+6rfX15sckDpVrzrKi482/KqY1
 M3d9smR9bOuDG/wzPuz6CzQUU8T/z84Ze45Qh4NLGGyuxLycASdx9AE+ub75tHCIZfze
 4zGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LOP3JntYPgb4inWvNcmObUOMv1XMpxVUdJZwgqRnphQ=;
 b=lOfvV+lWCdeWOPltSYDsOagYqKR7vICvaGwAhpOFSnk/3yHRZl2FANyfNiilU2rumm
 QJfMTY1DtcYvlG1qx5UvhcZk6GUJI//fYQU9AbeuZZ23azv169FQtVnTbzaVpkXJk+dd
 0Wfj7xbmLH46Pt9ZUdxv5wt455EK1ZabEaKmz0v0v3Thh7kGhrdHjC1yt2bwEskRCkH/
 vPpdKk28kFmiqz6jiTkRk5uB9mfYPs44c2/osGf5ITuspkIflxLHactd2vRW+VzZEujy
 xrxENjRdgWQahTXCDS+gLNxvL33N+BE9PWjHZZ0OA8BtDeVI4w2Js44gifz+VUFgqzI0
 1xFw==
X-Gm-Message-State: APjAAAVcQWRjUxD1cwZjgb2kznVFLLHLblH/BefQrLGuD4iFEKUa0SgN
 +ZVAODFE+dIjGEsCofngBWOdvmNAcu5j1nIBajo=
X-Google-Smtp-Source: APXvYqwHdYZA2F2s3/isE9T5301ZzT69++eZM1KslECeXSEnQQ5qDk0pE15X4tdOrg8UzJKAGqstnnoZHpTP8wjEkQg=
X-Received: by 2002:a5d:6ccd:: with SMTP id c13mr19608509wrc.4.1565290444617; 
 Thu, 08 Aug 2019 11:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <5d47f990.1c69fb81.a5d88.ee1f@mx.google.com>
 <20190805111205.GB6432@sirena.org.uk>
 <20190808184149.GA441@roeck-us.net>
In-Reply-To: <20190808184149.GA441@roeck-us.net>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 8 Aug 2019 14:53:52 -0400
Message-ID: <CADnq5_NL6+AohC-3HJa+84k50ewqYLMy_VuFmgY=aw872JFf-A@mail.gmail.com>
Subject: Re: next/master build: 230 builds: 5 failed, 225 passed, 6 errors,
 1344 warnings (next-20190805)
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_115406_856401_AF172586 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Zhou <David1.Zhou@amd.com>, kernel-build-reports@lists.linaro.org,
 David Airlie <airlied@linux.ie>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Tao Zhou <tao.zhou1@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Dennis Li <dennis.li@amd.com>, Mark Brown <broonie@kernel.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgOCwgMjAxOSBhdCAyOjUzIFBNIEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNr
LXVzLm5ldD4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAwNSwgMjAxOSBhdCAxMjoxMjowNVBNICsw
MTAwLCBNYXJrIEJyb3duIHdyb3RlOgo+ID4gT24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDI6NDA6
MzJBTSAtMDcwMCwga2VybmVsY2kub3JnIGJvdCB3cm90ZToKPiA+Cj4gPiBUb2RheSdzIC1uZXh0
IGZhaWxzIHRvIGJ1aWxkIGFuIGFybSBhbGxtb2Rjb25maWcgZHVlIHRvOgo+ID4KPiA+ID4gYWxs
bW9kY29uZmlnIChhcm0sIGdjYy04KSDigJQgRkFJTCwgMiBlcnJvcnMsIDE2IHdhcm5pbmdzLCAw
IHNlY3Rpb24gbWlzbWF0Y2hlcwo+ID4gPgo+ID4gPiBFcnJvcnM6Cj4gPiA+ICAgICBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmM6Mjc5Ojk6IGVycm9yOiBpbXBsaWNp
dCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiAncmVhZHEnOyBkaWQgeW91IG1lYW4gJ3JlYWRiJz8g
Wy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gPiA+ICAgICBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmM6Mjk4OjM6IGVycm9yOiBpbXBsaWNp
dCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiAnd3JpdGVxJzsgZGlkIHlvdSBtZWFuICd3cml0ZWIn
PyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiA+Cj4gPiBkdWUgdG8g
NGZhMWM2YTY3OWJiMCAoZHJtL2FtZGdwdTogYWRkIFJSRUc2NC9XUkVHNjQoX1BDSUUpIG9wZXJh
dGlvbnMpCj4gPiB3aGljaCBpbnRyb2R1Y2VzIHVzZSBvZiByZWFkcSgpIGFuZCB3cml0ZXEoKS4K
Pgo+IEFGQUlDUyB0aGlzIHByb2JsZW0gYWZmZWN0cyBhbGwgMzItYml0IGJ1aWxkcywgaW5jbHVk
aW5nIGkzODYuCj4gSXMgaXQgaW4gdGhlIHByb2Nlc3Mgb2YgYmVpbmcgZml4ZWQsIG9yIHNob3Vs
ZCB3ZSBzdWJtaXQgYQo+IHBhdGNoIGxpbWl0aW5nIERSTV9BTURHUFUgdG8gNjQtYml0IGJ1aWxk
cyA/CgpZZXMsIHRoZSBmaXggaXMgYmVpbmcgZGlzY3Vzc2VkIGhlcmU6Cmh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zMjIyMTMvCgpBbGV4Cgo+Cj4gR3VlbnRlcgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYW1kLWdmeCBt
YWlsaW5nIGxpc3QKPiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vYW1kLWdmeAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
