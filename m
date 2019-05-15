Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3951EBEF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEz+6GhGIG+XZT8uF7b8WUXZixiSyOuiKX3UknyzCk8=; b=TEvhuY0E8nar0O
	e9sMfIca5biw6/sQjpBUkoZe0cIN7gr2ez8rp+OGVqdth0pcmomEGNks0ApfI1cRtrK9rYOjtDadv
	fAzVdjk8iSBZj807lF3VYnwDudcBA0MTZVCn6JE/SXeEJr9C0CqXylDBN6/V4jCn5Ywc1ln2Sz5xQ
	4qP361oYR8Jc7qYvuA3/VMnJ9ODJdgn51jp+u6/mo7eI0KrCMHgFef74JHU4oeR0Pou6Iz/dJo31v
	EjDz+kOE31Ck4bpsw0lAiboP/B3LeI4ZPAI9uTiGyb1RoS6oFwBZjGOuk27PqA7RLZexMXwYbh6kc
	Og4hQsJxOufkhGVSRT6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqxq-00088o-VU; Wed, 15 May 2019 10:16:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqxi-00088N-B5
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:16:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id h4so2007419wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 03:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=S/9jRohC0YkB1EkAIcCPuCB+iLIg4aRciSB21aigTqM=;
 b=T6kcFRLd4JJNo1RNjJ/P2EH1opLK6UrZasP02reNxcgFl+5LtIvmscmKSJaCQ+FwG9
 kmZ1XbYsEX/rYN64gYks2lLJuOYctJ4S95cKi8Rqpqy4/8RrjUQrlTBtwxxKFK5Bmrzt
 A9MwKbYaP6TvjLiUSfobpiQlesVjxZUiXkHVbZyHwCaQyC+9ZBB4FG3YDCWfes5PVN4K
 GFuRak6iKYztyqgi224FbbL6pEdDXYxG7zlJcBAUuKczQ8XoODPnrsbsYEqdtfTpJFao
 Ycq6nKCtDVRnpFiwZkVsxD90YC5DJiGDj2lT8IAduoXF1qrtCLf0paUL5KOAgnEuwBsX
 ckpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S/9jRohC0YkB1EkAIcCPuCB+iLIg4aRciSB21aigTqM=;
 b=O8oAg2Nya/tYwoJvIr8KC7q4K/Tg6LQw+0Q86BD0mfW2IfR1MnN2F0Dfn859oL4EHu
 ab1WUw/J0wsdoC8dZCwcN3GpxVlNsbMLHu/lEpBBx7QB+8wxCUPUF8wqByhPaZbvNKkR
 W0/7KjOjwy/RNyVHuZTJonfE/k99kRDu4FLYsS265IZtJxKNgjaZH+9JW7L/OwLtqmJ7
 vy+57BaBLlJLuXOU5UcyUl/wcFwjFmuK4Xn15+lGTeLS4mRMHfSAn3yxrt0HrfpXsrM/
 Nd0xcjvgIavGhwCG5IUaZDEER9Hbv6FfdR7SqCoChlGrrq9wruYEAFzOpZn8oC0tWanr
 Y1uQ==
X-Gm-Message-State: APjAAAWw7fEFWyRjhbtVu/KIFijN2Xc32WpQXwNej9BDCEXVYb28rUYw
 NBn7Fnbgt55b+tGUqqLehgZMxe8jfNE=
X-Google-Smtp-Source: APXvYqzgasfAM4L2+hLYnGfh5HtrNS+duN6uO0OQG+6hKeYA0zvsxpwlYhwIxxREJrdqVU2YS1A82w==
X-Received: by 2002:adf:b456:: with SMTP id v22mr23101764wrd.55.1557915396524; 
 Wed, 15 May 2019 03:16:36 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id w185sm2406511wma.39.2019.05.15.03.16.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 03:16:35 -0700 (PDT)
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
To: Quentin Perret <quentin.perret@arm.com>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
 <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
 <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <cf1474cb-7e31-7070-b988-a0c4d3f6f081@linaro.org>
Date: Wed, 15 May 2019 12:16:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_031638_379535_A8372DE0 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, amit.kachhap@gmail.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, will.deacon@arm.com,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDUvMjAxOSAxMjowNywgUXVlbnRpbiBQZXJyZXQgd3JvdGU6Cj4gT24gV2VkbmVzZGF5
IDE1IE1heSAyMDE5IGF0IDExOjU2OjMwICgrMDIwMCksIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+
PiBPbiAxNS8wNS8yMDE5IDExOjE3LCBRdWVudGluIFBlcnJldCB3cm90ZToKPj4+IEhpIERhbmll
bCwKPj4+Cj4+PiBPbiBXZWRuZXNkYXkgMTUgTWF5IDIwMTkgYXQgMTE6MDY6MTggKCswMjAwKSwg
RGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Pj4gT24gMTUvMDUvMjAxOSAxMDoyMywgUXVlbnRpbiBQ
ZXJyZXQgd3JvdGU6Cj4+Pj4+IEluIHRoZSBjdXJyZW50IHN0YXRlLCB0aGUgcGVyZl9kb21haW4g
c3RydWN0IGlzIGZ1bGx5IGRlZmluZWQgb25seSB3aGVuCj4+Pj4+IENPTkZJR19FTkVSR1lfTU9E
RUw9eS4gU2luY2Ugd2UgbmVlZCB0byB3cml0ZSBjb2RlIHRoYXQgY29tcGlsZXMgYm90aAo+Pj4+
PiB3aXRoIG9yIHdpdGhvdXQgdGhhdCBvcHRpb24gaW4gdGhlIHRoZXJtYWwgZnJhbWV3b3JrLCBt
YWtlIHN1cmUgdG8KPj4+Pj4gYWN0dWFsbHkgZGVmaW5lIHRoZSBzdHJ1Y3QgcmVnYXJkbGVzcyBv
ZiB0aGUgY29uZmlnIG9wdGlvbi4gVGhhdCBhbGxvd3MKPj4+Pj4gdG8gYXZvaWQgdXNpbmcgc3R1
YmJlZCBhY2Nlc3NvciBmdW5jdGlvbnMgYWxsIHRoZSB0aW1lIGluIGNvZGUgcGF0aHMKPj4+Pj4g
dGhhdCB1c2UgdGhlIEVNLgo+Pj4+Pgo+Pj4+PiBBY2tlZC1ieTogVmlyZXNoIEt1bWFyIDx2aXJl
c2gua3VtYXJAbGluYXJvLm9yZz4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogUXVlbnRpbiBQZXJyZXQg
PHF1ZW50aW4ucGVycmV0QGFybS5jb20+Cj4+Pj4KPj4+PiBUaGlzIHBhdGNoIGltcGxpZXMgdGhl
IGNwdSBjb29saW5nIGRldmljZSBjYW4gYmUgc2V0IHdpdGhvdXQgdGhlIGVuZXJneQo+Pj4+IG1v
ZGVsLgo+Pj4+Cj4+Pj4gSXNuJ3QgaXQgcG9zc2libGUgdG8gbWFrZSBhIHN0cm9uZyBkZXBlbmRl
bmN5IGZvciB0aGUgY3B1IGNvb2xpbmcgZGV2aWNlCj4+Pj4gb24gdGhlIGVuZXJneSBtb2RlbCBv
cHRpb24sIGFkZCB0aGUgZW5lcmd5IG1vZGVsIGFzIGRlZmF1bHQgb24gYXJtIGFyY2gKPj4+PiBh
bmQgZHJvcCB0aGlzIHBhdGNoPwo+Pj4KPj4+IFJpZ2h0LCB0aGF0IHNob3VsZCB3b3JrIHRvby4K
Pj4+Cj4+Pj4gQWZ0ZXIgYWxsLCB0aGUgY3B1IGNvb2xpbmcgaXMgdXNpbmcgdGhlIGVtIGZyYW1l
d29yay4KPj4+Cj4+PiBUaGUgcmVhc29uIEkgZGlkIGl0IHRoYXQgd2F5IGlzIHNpbXBseSB0byBr
ZWVwIHRoaW5ncyBmbGV4aWJsZS4gSWYgeW91Cj4+PiBkb24ndCBjb21waWxlIGluIFRIRVJNQUxf
R09WX1BPV0VSX0FMTE9DQVRPUiwgeW91IHdpbGwgbmV2ZXIgdXNlIHRoZSBFTQo+Pj4gZm9yIENQ
VSB0aGVybWFsLiBTbyBJIHRob3VnaHQgaXQgd291bGQgYmUgZ29vZCB0byBub3QgbWFuZGF0ZSBj
b21waWxpbmcKPj4+IGluIEVORVJHWV9NT0RFTCBpbiB0aGlzIGNhc2UgLS0gdGhhdCBzaG91bGQg
c2F2ZSBhIGJpdCBvZiBzcGFjZS4KPj4+Cj4+PiBCdXQgVEJIIEkgZG9uJ3QgaGF2ZSBhIHN0cm9u
ZyBvcGluaW9uIG9uIHRoaXMgb25lLCBzbyBpZiBldmVyeWJvZHkKPj4+IGFncmVlcyBpdCdzIGZp
bmUgdG8ganVzdCBtYWtlIENQVV9USEVSTUFMIGRlcGVuZCBvbiBFTkVSR1lfTU9ERUwsIEknbQo+
Pj4gaGFwcHkgdG8gZHJvcCB0aGlzIHBhdGNoIGFuZCBmaXggcGF0Y2ggMy8zLiBUaGF0IHdvdWxk
IGluZGVlZCBzaW1wbGlmeQo+Pj4gdGhpbmdzIGEgYml0Lgo+Pgo+PiBPayBpbiB0aGlzIGNhc2Ug
aXQgd2lsbCBiZSBiZXR0ZXIgdG8gZHJvcCB0aGUgMi8zIGFuZCBhZGQgYSBzbWFsbCBzZXJpZXMK
Pj4gZG9pbmcgZm9yIHRoZSBjcHVfY29vbGluZy5jCj4+Cj4+ICNpZmRlZiBDT05GSUdfVEhFUk1B
TF9HT1ZfUE9XRVJfQUxMT0NBVE9SCj4+Cj4+IC8qIHN0cnVjdHVyZSBmcmVxICovCj4+Cj4+IC8q
IHBvd2VyMnN0YXRlICovCj4+Cj4+IC8qIHN0YXRlMnBvd2VyKi8KPj4KPj4gLyogZ2V0cmVxdWVz
dGVkcG93ZXIgKi8KPj4KPj4gLyogQWxsIGZ1bmN0aW9ucyBuZWVkZWQgZm9yIHRoZSBhYm92ZSAq
Lwo+Pgo+PiAjZW5kaWYKPj4KPj4gc3RhdGljIHN0cnVjdCB0aGVybWFsX2Nvb2xpbmdfZGV2aWNl
X29wcyBjcHVmcmVxX2Nvb2xpbmdfb3BzID0gewo+PiAgICAgICAgIC5nZXRfbWF4X3N0YXRlICAg
ICAgICAgID0gY3B1ZnJlcV9nZXRfbWF4X3N0YXRlLAo+PiAgICAgICAgIC5nZXRfY3VyX3N0YXRl
ICAgICAgICAgID0gY3B1ZnJlcV9nZXRfY3VyX3N0YXRlLAo+PiAgICAgICAgIC5zZXRfY3VyX3N0
YXRlICAgICAgICAgID0gY3B1ZnJlcV9zZXRfY3VyX3N0YXRlLAo+PiAjaWZkZWYgQ09ORklHX1RI
RVJNQUxfR09WX1BPV0VSX0FMTE9DQVRPUgo+PiAgICAgICAgIC5nZXRfcmVxdWVzdGVkX3Bvd2Vy
ICAgID0gY3B1ZnJlcV9nZXRfcmVxdWVzdGVkX3Bvd2VyLAo+PiAgICAgICAgIC5zdGF0ZTJwb3dl
ciAgICAgICAgICAgID0gY3B1ZnJlcV9zdGF0ZTJwb3dlciwKPj4gICAgICAgICAucG93ZXIyc3Rh
dGUgICAgICAgICAgICA9IGNwdWZyZXFfcG93ZXIyc3RhdGUsCj4+ICNlbmRpZgo+PiB9Owo+Pgo+
PiBTbyB5b3UgZG9uJ3QgaGF2ZSB0byBjYXJlIGFib3V0IEVORVJHWV9NT0RFTCB0byBiZSBzZXQg
YXMKPj4gVEhFUk1BTF9HT1ZfUE9XRVJfQUxMT0NBVE9SIGRlcGVuZHMgb24gaXQuCj4+Cj4+IEkg
dGhpbmsgdGhlIHJlc3VsdCBmb3IgY3B1X2Nvb2xpbmcuYyB3aWxsIGJlIGV2ZW4gbW9yZSBjbGVh
bmVyIHdpdGggdGhlCj4+IGVtIGNoYW5nZS4KPiAKPiBPSywgdGhhdCB3b3JrcyBmb3IgbWUuIEkn
bGwgZ2l2ZSBpdCBhIGdvIGluIHY1LgoKVmlyZXNoIHdoYXQgZG8geW91IHRoaW5rID8KCgotLSAK
IDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5j
b20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJv
b3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
