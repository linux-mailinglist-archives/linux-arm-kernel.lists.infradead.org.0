Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1009F1323BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:36:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrFq1Ir3i0HPNQqHB9Ws6tHXCdiX5inENL4lPi0KkqM=; b=eb4gh0IPEsVLTA
	P7hBIwFf4WqX0O2c2jzt6Az8KZX0DquH8Q0cWh6jL1orAUFpZAKhVRJIjs6BQ/wFtMns9LV7UcPBt
	gmsRyWm1Ps07Y0bENTx4oonrRAY4WIXFkEpB83drFAYTIdlWYf26k9YcgpNzeMuJTF8hiVwfYnZ3N
	AC2kOCNTzkSgZoggf/4OsxbaKx2qI4Dc/+KMsmvXwWQoiuXPp1VXBgnOgXlNFPCL+SOWctOhZpIZM
	EraQlVERnpgXrNhDq9lGBAxPihlIx+tznumUC6wzmMce7Kv0gPkuXWoNvBKwf1NpyIS/K9DZlrGDM
	VzKF/SbXTr/5VHE0jSlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomDn-0004un-Kq; Tue, 07 Jan 2020 10:36:23 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomDg-0004u1-E7
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:36:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id y19so38483077lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 02:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sG/kXuqLeJvqG1lAcs804RB5cd4ar5VVtWwgAsRdZ/s=;
 b=GtBPym2vWmXC28LTMAxnKxk7zjFcA0gTofCfYp/e1hRMRUzc/l8OWm9FZJZ6TDraA2
 q4bBSbz5y+eUEcdjmWNedK3ESN4gfVo8PNP7tyo830m/EXIkvN1LvV6g5cu8IzmZufSV
 z0Nagz0pJgHNuua3MtsiJsbWnaFNeNuD9wevv9jvuPn68bVazL3RAwXefpB3OPj5CrXh
 4/5bEiBbEQ0fKbcZ5BrnqRAHjAqdP0ALSVrbLbL7Mpum3/cQG9wIzWYkzMCXi3qgMAO3
 362Lw4Cj5hzHVXE85YnlCuF5u8wufzrOhJY+WEL03UrbpyzNNgJ3CKci3Yr256HLyHmU
 XaAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sG/kXuqLeJvqG1lAcs804RB5cd4ar5VVtWwgAsRdZ/s=;
 b=p+aFMWdbPjCXVAEWLmePcnJ7fSN3otiBlLWr2MdOVQKsVcG9aORAkLfvrcPHWW3623
 FbvWPYu6EgrBkVktHV/Uvsd1sgx3VRljdxPCMXmgVjqqqnnQlZMgtUc1zYhD6C2GkcO+
 cXcTfQL1oq7H7EwCGz04OAIEqw+EXQpSWrPZ+paDDwih06bSOdXi0fboWxNqz4AycMvv
 H6mIBgiABmTKdqLytXHmDepFRMmnSQP0P0MNIeIoarUhHeec2Up7HrXvNCeLllJhLOo6
 x9kfk6x/SAETEznMjeNWQ6bO5NSmDRM3A2NnQW8rMezgpKU2+TaSMeUvqcNDqwSThC2g
 lskg==
X-Gm-Message-State: APjAAAUZQw0zbOz5Q2CyQo5g0QLq47z6/dbx/Wh5l//8EusZzxy+5s71
 OUSlYiqDBuJDk5i2k5TyW05RSszHYLVugwuy62CtFw==
X-Google-Smtp-Source: APXvYqwtSih7jQpztMo/SWJRjyemZlwG1+gqydx7vYHxxHiA9/nJ8znZ/8sEt3hdZ1WVHXFNFrrCHonuUSWxZhzsjpg=
X-Received: by 2002:a19:8a41:: with SMTP id m62mr58979605lfd.5.1578393374908; 
 Tue, 07 Jan 2020 02:36:14 -0800 (PST)
MIME-Version: 1.0
References: <20191230172751.17985-1-krzk@kernel.org>
 <20191230172751.17985-4-krzk@kernel.org>
In-Reply-To: <20191230172751.17985-4-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 11:36:04 +0100
Message-ID: <CACRpkdaKPWott93XQp1iWMO6m6TqqW+iuN33PnSDOnOMMdCEbg@mail.gmail.com>
Subject: Re: [PATCH 4/5] i2c: stu300: Use proper printk format for iomem
 pointer
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_023616_518508_23CB4725 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>, Max Staudt <max@enpas.org>,
 Elie Morisse <syniurge@gmail.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 linux-i2c <linux-i2c@vger.kernel.org>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgMzAsIDIwMTkgYXQgNjoyOCBQTSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnpr
QGtlcm5lbC5vcmc+IHdyb3RlOgoKPiBpb21lbSBwb2ludGVycyBzaG91bGQgYmUgcHJpbnRlZCB3
aXRoIHBvaW50ZXIgZm9ybWF0IHRvIGhpZGUgdGhlCj4gYWN0dWFsIHZhbHVlIGFuZCBmaXggd2Fy
bmluZ3Mgd2hlbiBjb21waWxpbmcgb24gNjQtYml0IHBsYXRmb3JtIChlLmcuIHdpdGgKPiBDT01Q
SUxFX1RFU1QpOgo+Cj4gICAgIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtc3R1MzAwLmM6IEluIGZ1
bmN0aW9uIOKAmHN0dTMwMF93YWl0X3doaWxlX2J1c3nigJk6Cj4gICAgIGRyaXZlcnMvaTJjL2J1
c3Nlcy9pMmMtc3R1MzAwLmM6NDQ2Ojc2OiB3YXJuaW5nOgo+ICAgICAgICAgY2FzdCBmcm9tIHBv
aW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBbLVdwb2ludGVyLXRvLWludC1jYXN0
XQo+Cj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3Jn
PgoKUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4K
CllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
