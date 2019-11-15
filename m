Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316FCFD27A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 02:33:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isCw2FdH3A10mz8JxuICpdwiJECDdYdPiTy7iUdJHdc=; b=KImHfksFT12jSu
	I3r6MABqM8QZpnZFIKIztzDwr49PREDx8lil3OfSpaYgz8DGdkVKWhpnL1oUlyOcGK8jHPi1S3upj
	JSpPlXtuImowNJvQdKuDdM1f8hWY92+BuADBq0OGYw7dTKxJLlfy9X9w+YPE+Dwcie/05FNGImH/q
	tpK0Yw9bzWXhYoyOb2sGVX8fflX83T4zzuk3JRwyqwfc8SdnK+m4/zQeZYL9EchUvtEoqxlhVVmZI
	cFOOthkR4oKBnwJyOZkVjgxGsTByb2+b56YgaEj6kLR9UEDi7572+G5fmE2aZaqfcut0u5vqBpR+p
	w1bWiSPzbjtp+s3vgXPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVQUQ-0007wr-73; Fri, 15 Nov 2019 01:33:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVQUG-0007w3-NS; Fri, 15 Nov 2019 01:33:25 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 969B220729;
 Fri, 15 Nov 2019 01:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573781603;
 bh=TjfPdNVPIeEvReyGDHdp+l0oWyIBAlhdiKCkIA2SxF4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wXwmH1o9Ntc1eiYydifMeSePrvyPdp843OoG1MKhziCfF0WKkKntoLojZuqNXZSWQ
 XRPqSbpgzjleJDHBFSQd90rNYLV0/lkKPUaCvcZZ2Z0Ui6dKVLAOLqry7gLks5DZG/
 hGCABoAeV60FY/M7dMTGMagtjKD8VKuUcn7yU7PA=
Received: by mail-qk1-f182.google.com with SMTP id m16so6821636qki.11;
 Thu, 14 Nov 2019 17:33:23 -0800 (PST)
X-Gm-Message-State: APjAAAWaIUUvlP7QXtAuJhNVroTvjcSUZ/B1hT9YX0jBiSX/6C5oBwwh
 qevqKh/AyPjcYXhG12xAVihNc+OQHFDwuGcWOQ==
X-Google-Smtp-Source: APXvYqyrKS5cVeQ3i3w1IPqL0wZve42ikZtItrJjuSQMwNf9oO+9PoexTpjhpJX3Vg+HensaTGHh5ytaFFs4FY1vmfw=
X-Received: by 2002:a05:620a:205d:: with SMTP id
 d29mr10453959qka.152.1573781602693; 
 Thu, 14 Nov 2019 17:33:22 -0800 (PST)
MIME-Version: 1.0
References: <20191031165308.14102-1-afaerber@suse.de>
 <20191031165308.14102-4-afaerber@suse.de>
In-Reply-To: <20191031165308.14102-4-afaerber@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 14 Nov 2019 19:33:11 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKON3rp61e=_7D7zD6k7XFJxbwEziZxWeKB7+i+bnTGPA@mail.gmail.com>
Message-ID: <CAL_JsqKON3rp61e=_7D7zD6k7XFJxbwEziZxWeKB7+i+bnTGPA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] ARM: dts: Prepare Realtek RTD1195 and MeLE X1000
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_173324_787403_9DF5267B 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBPY3QgMzEsIDIwMTkgYXQgMTE6NTMgQU0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJl
ckBzdXNlLmRlPiB3cm90ZToKPgo+IEFkZCBEZXZpY2UgVHJlZXMgZm9yIFJlYWx0ZWsgUlREMTE5
NSBTb0MgYW5kIE1lTEUgWDEwMDAgVFYgYm94Lgo+Cj4gUmV1c2UgdGhlIGV4aXN0aW5nIFJURDEy
OTUgd2F0Y2hkb2cgY29tcGF0aWJsZSBmb3Igbm93Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5kcmVh
cyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+IC0tLQo+ICB2MSAtPiB2MjoKPiAgKiBEcm9w
cGVkIC9tZW1yZXNlcnZlLyBhbmQgcmVzZXJ2ZWQtbWVtb3J5IG5vZGVzIGZvciBwZXJpcGhlcmFs
cyBhbmQgTk9SIChSb2IpCj4gICogQ2FydmVkIHRoZW0gb3V0IGZyb20gbWVtb3J5IHJlZyBpbnN0
ZWFkIChSb2IpCj4gICogQ29udmVydGVkIHNvbWUgL21lbXJlc2VydmUvcyB0byByZXNlcnZlZC1t
ZW1vcnkgbm9kZXMKPgo+ICBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAgICAgICAgICAg
IHwgICAyICsKPiAgYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS1tZWxlLXgxMDAwLmR0cyB8ICAz
MSArKysrKysrKwo+ICBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgICAgICAgICAgIHwg
MTI3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAx
NjAgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMv
cnRkMTE5NS1tZWxlLXgxMDAwLmR0cwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9v
dC9kdHMvcnRkMTE5NS5kdHNpCgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
