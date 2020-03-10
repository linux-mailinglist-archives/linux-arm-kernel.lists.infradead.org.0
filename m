Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B526F1802F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:16:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUC/0cZnjdDJ+zx/EVZKmWWEfT3v8ERKgiw/nJCVozg=; b=JiLbKqoyKg9Atv
	GrVbmkV9jDiDGZRKh0/jPjcReCWABNXMFjOhJSouAIBjXVdxGRChCxaVvd/4Peh5nYnLMUyc6y3Qv
	iS0U1MDzElKXjPBz28EuffdiJbOl1JWlohowVYGK1Oysps73TArsRp3WwroNAjJ4i7AbtuI1uYkao
	/hwzMgq1m5vPVlMvWj6wqQqnMaYxjkv5Gp7xVQz+F8U/IKeISs72/Lxnif/dcmH/kMQ9QOy6jvYaD
	sYygGYbmk4ySANgz/CGIbtwa6trg01LpJwS/wt8TowcM0O9Ic6Nlv4hHOZhi82MOJUSh1vB36Rdgo
	Rer1F1EFWoTPEpSOZbcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhYR-0002gF-Ap; Tue, 10 Mar 2020 16:16:27 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhYI-0002fc-VY
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:16:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so14830343ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 09:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RjaCGXNjRwtaH9QvtoEkEWAf93tfcxpeZIkmTeM6Kac=;
 b=PJxbR7NxiXrWYDxph/s80a0xfFYJALFbg0lgiM/Na7hrjFyMqWi4bIDja60OH+2gai
 r4Y+0QXErE2COKoqutTh0HmMm0pdGUHUoYJwozxJFMcG6ScchrKG3PKA6PhDHIP7Oq4T
 mGZNHU5ZT4J80hgUdusmp8Ei4hiKw4z+02ADlWdpQrAp9OSU7/UvZrIX5bkGda5cFYfe
 meDYxpn7asJEn0/VKHJrhhKSwrZM5J7luopdabdC8Ztf/VQrh5C1VFm2GIyYVRL6oDBg
 p47swnjc6phMB/EYZkC70RNn6shhHc1Fkydi+9z8cGhvRHlivILGtXSSsERxzD5HyuS2
 Qamg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RjaCGXNjRwtaH9QvtoEkEWAf93tfcxpeZIkmTeM6Kac=;
 b=swf52gwnwlJ8vMj/nOmBga0CpyqUZtJVvdoGu8+aspJ/IT3eSPj60+vOn+oM5buMD8
 2vIaqlrkzJthN8daGQX11/uHG8hbQlFQcBlxg/Sdmu15B3KgKw050sJUsj8yGXuWI8ef
 SN8axZT0jr+ucNv0rTSC+SqM5f22ttJ7RGTSPePwKgOw7qwDnxYHbL4rh/yTVobpgCtu
 4iFTdQ/3Zg5BRCHt3i00ngfNgeN1uYEAZV4QYcB7gdivPdSIUOxRWB23+kybQVuMWR0/
 nk3XVS8C16V6FZRa0+Tn6wnAIJUVjujtKxmSiho3hViS7BJgr2UtIYlFqjZ9OrowOu/J
 SQ/g==
X-Gm-Message-State: ANhLgQ3ajkNlmuWQQfgPMyUZNCHGu3jwx0AjBwR/1F/Gs06I8IhYcdiL
 dN2wzsFgyQe9OMtJsadEYwFAGQ6V
X-Google-Smtp-Source: ADFU+vvBHH36dIlNgKvb4wlGwtmjMNU9As71C/R/V+eZBvBQEoLLiBKML70HHd5NEFujerM1RXOobA==
X-Received: by 2002:a2e:904f:: with SMTP id n15mr12784000ljg.101.1583856976966; 
 Tue, 10 Mar 2020 09:16:16 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id x13sm10752448lfq.97.2020.03.10.09.16.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 09:16:16 -0700 (PDT)
Subject: Re: [PATCH v5 2/8] clk: tegra: Export functions for EMC clock scaling
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-3-thierry.reding@gmail.com>
 <8e1f11e9-a95a-500f-ff44-6f44ad990863@gmail.com>
Message-ID: <1ac24caf-e4c1-b20e-4c3d-97b328a97ea5@gmail.com>
Date: Tue, 10 Mar 2020 19:16:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <8e1f11e9-a95a-500f-ff44-6f44ad990863@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_091619_020288_4A039D88 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDMuMjAyMCAxOToxMywgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMTAuMDMuMjAy
MCAxODoxOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPj4gRnJvbTogSm9zZXBoIExvIDxq
b3NlcGhsQG52aWRpYS5jb20+Cj4+Cj4+IEV4cG9ydCBmdW5jdGlvbnMgdG8gYWxsb3cgYWNjZXNz
aW5nIHRoZSBDQVIgcmVnaXN0ZXIgcmVxdWlyZWQgYnkgRU1DCj4+IGNsb2NrIHNjYWxpbmcuIFRo
ZXNlIGZ1bmN0aW9ucyB3aWxsIGJlIHVzZWQgdG8gYWNjZXNzIHRoZSBDQVIgcmVnaXN0ZXIKPj4g
YXMgcGFydCBvZiB0aGUgc2NhbGluZyBzZXF1ZW5jZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSm9z
ZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFRoaWVycnkgUmVk
aW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Cj4+IC0tLQo+PiBDaGFuZ2VzIGluIHY1Ogo+PiAtIHJl
bW92ZSB0ZWdyYTIxMF9jbGtfZW1jX3VwZGF0ZV9zZXR0aW5nKCkgd2hpY2ggaXMgbm8gbG9uZ2Vy
IG5lZWRlZAo+Pgo+IC4uLgo+PiArRVhQT1JUX1NZTUJPTF9HUEwodGVncmEyMTBfY2xrX2VtY191
cGRhdGVfc2V0dGluZyk7Cj4gLi4uCj4+ICtleHRlcm4gdm9pZCB0ZWdyYTIxMF9jbGtfZW1jX2Rs
bF9lbmFibGUoYm9vbCBmbGFnKTsKPj4gK2V4dGVybiB2b2lkIHRlZ3JhMjEwX2Nsa19lbWNfZGxs
X3VwZGF0ZV9zZXR0aW5nKHUzMiBlbWNfZGxsX3NyY192YWx1ZSk7Cj4+ICtleHRlcm4gdm9pZCB0
ZWdyYTIxMF9jbGtfZW1jX3VwZGF0ZV9zZXR0aW5nKHUzMiBlbWNfc3JjX3ZhbHVlKTsKPiAKPiBX
aHkgdGhlc2UgZXhwb3J0cyBhcmUgbmVlZGVkIGdpdmVuIHRoYXQgdGhlIEVNQyBkcml2ZXIgaXMg
YnVpbHQtaW4/Cj4gCgpBbHNvLCBzZWVtcyBjaGFuZ2Vsb2cgZG9lc24ndCBtYXRjaCB0aGUgcGF0
Y2ggaXRzZWxmLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
