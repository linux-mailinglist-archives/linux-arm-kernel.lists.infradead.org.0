Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31775133F71
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkhSM588TP3wf0OGoVIKi6UytALP00Hs+C4xAynIOBE=; b=CzkIjm6HIxuWNv
	g1EPQXrqLV6tOioIbkr3X8/phcH8sOFc/ppdFhRqIA1u27kOJaVYPkQCYOxfFvCWkU1Na382FYyeF
	olrOBRHqEKwvTMRCaBw7YQdGjPWLhn5bqwR07N1wu+ZkKbRfO/A8B0kE0Gzo+kWNbHLs+Uo/l3Cou
	DIuAn1fxFhSNe4QAx5IQeNbm5rtuB3Aei4P5d2E0UtsIiUfaskbsJZfe5qh7rMJkmcIA2ZyeI0zLt
	rx/olrTjpyI8eJbohWXvs7o9JrUXmqBhWcaYlB5H/KwA74+Naz7k4QBDq3CRvHQqpI0/phJs78sw1
	iK3Y2e5MvJPxXGP+l/TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8la-0001XO-Qd; Wed, 08 Jan 2020 10:40:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8lQ-0001UR-48
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:40:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so2858677wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 02:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=siCClIKYBSJbbyV9Fx1AWH7B6zrtxbk84GPvmjQP9HY=;
 b=uHOLhO+V1x6pLXu/z7YfTI/wnHQzDFdVV7yVLl1IfGKQbRkCVrCICV6jG9rUypPsF9
 EogGLFTvAc9j8fguwf7uI8r1ci5Eno7V6B31z8o6eeMIjLkNllMihdtgr6ONtTV3rLA6
 qMI+PxRjF4lxg7C8mUT4jw4QaynGlrHAy5d7/f5ruZFpxiwtFbyLEF0XI9hO3ZSjH8ef
 uXd5QquKbtlHMm8U+vYgedKflsRpd1zv/+W/WqlQcZz8jcF+uIF1I3L2HLz/kIjy77fw
 +ELCoR22idD9rWtySjLDPAh859wY7yAb/wZO4WZQte2D+lie7CFagsBJrPBf732+TA87
 Zvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=siCClIKYBSJbbyV9Fx1AWH7B6zrtxbk84GPvmjQP9HY=;
 b=t49m16OkjHK0OPSFEk/RGjHhENxihk7TFIF58+Jv+VM/XOtX1b7PDpZtSaec0dQ2Ot
 nTxnp22SHNPrQql71poxDKx9vKTODu1rFhW2DVdWOSD/DaoasyvawoV4P9aZkXT8SGxW
 CMJbWbCBFduguiB+FJ/px4cEeYEbTsWViOhhglHYfZiSMY7UopRwRXILjSVGTp8Fnh5F
 i92mDF+iA6zijo4hOAEx2EqvDKR8vMdSU2BE6sVJMVeyh1SLngBEqkLLVjGb/wYYdO0G
 0nanGHI2wESIhbY9GLBV6/2kIk6Nb7lyYyIToNSMqOKWqD6IHdQjjZwyovuGzRym0fLa
 f4Aw==
X-Gm-Message-State: APjAAAWHBz5cVl+cv5lZ1pAXzA5RDJog5VrSCJ9wdGbEBZfHv/vifq1b
 u/CuC60TIcAl/4Fhxp3hE7AFKQbZ8g4k7cW7a7g=
X-Google-Smtp-Source: APXvYqzPoDrHqZH8i5DPEVIqG+zBSIYdBoE603DpxkU4fYvZsdM0T7mXmsW5RIww8qDtkz4nKlMDh3Cmy9bUzC2jXMw=
X-Received: by 2002:adf:f7c4:: with SMTP id a4mr3640527wrq.332.1578480032491; 
 Wed, 08 Jan 2020 02:40:32 -0800 (PST)
MIME-Version: 1.0
References: <20191124172908.10804-1-peron.clem@gmail.com>
In-Reply-To: <20191124172908.10804-1-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 8 Jan 2020 11:40:21 +0100
Message-ID: <CAJiuCce_zg_E99EKbQa3aQ1fjziB4Ead9p6J8F0wYWk2_VcFZg@mail.gmail.com>
Subject: Re: [PATCH v9 0/6] Add support for H6 PWM
To: Thierry Reding <thierry.reding@gmail.com>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_024037_082142_08200B92 
X-CRM114-Status: GOOD (  25.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
Cc: Linux PWM List <linux-pwm@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLCBUaGllcnJ5LAoKT24gU3VuLCAyNCBOb3YgMjAxOSBhdCAxODoyOSwgQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IFRoaXMgaXMg
YSByZXdvcmsgb2YgSmVybmVqJ3MgcHJldmlvdXMgd29ya1sxXSB0YWtpbmcgYWNjb3VudCBhbGwg
dGhlCj4gcHJldmlvdXMgcmVtYXJrcy4KCklzIHRoaXMgc2VyaWVzIG9rIGZvciB5b3U/CkZZSSB0
aGUgZGV2aWNlLXRyZWUgYmluZGluZ3MgaXMgbWVyZ2VkIGluIHN1bnhpLW5leHQuCgpUaGFua3Ms
CkNsZW1lbnQKCj4KPiBCaW5kaW5ncyBpcyBzdGlsbCBzdHJpY3QgYnV0IHByb2JlIGluIHRoZSBk
cml2ZXIgYXJlIG5vdyBvcHRpb25uYWxzLgo+Cj4gSWYgc29tZW9uZSBjb3VsZCBjb25maXJtIHRo
YXQgdGhlIFBXTSBpcyBub3QgYnJva2VuLCBhcyBteSBib2FyZAo+IGRvZXNuJ3Qgb3V0cHV0IGl0
Lgo+Cj4gVGhhbmtzLAo+IENsw6ltZW50Cj4KPiBKZXJuZWoncyBjb3ZlcjoKPiBBbGx3aW5uZXIg
SDYgU29DIGhhcyBQV00gY29yZSB3aGljaCBpcyBiYXNpY2FsbHkgdGhlIHNhbWUgYXMgdGhhdCBm
b3VuZAo+IGluIEEyMCwgaXQncyBqdXN0IGRlcGVuZHMgb24gYWRkaXRpb25hbCBidXMgY2xvY2sg
YW5kIHJlc2V0IGxpbmUuCj4KPiBUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIGl0IGFuZCBl
eHRlbmRzIFBXTSBkcml2ZXIgZnVuY3Rpb25hbGl0eSBpbgo+IGEgd2F5IHRoYXQgaXQncyBub3cg
cG9zc2libGUgdG8gYnlwYXNzIHdob2xlIGNvcmUgYW5kIG91dHB1dCBQV00gc291cmNlCj4gY2xv
Y2sgZGlyZWN0bHkgYXMgYSBQV00gc2lnbmFsLiBUaGlzIGZ1bmN0aW9uYWxpdHkgaXMgbmVlZGVk
IGJ5IEFDMjAwCj4gY2hpcCwgd2hpY2ggaXMgYnVuZGxlZCBpbiBzYW1lIHBoeXNpY2FsIHBhY2th
Z2UgYXMgSDYgU29DLCB0byBzZXJ2ZSBhcyBhCj4gY2xvY2sgc291cmNlIG9mIDI0IE1Iei4gQUMy
MDAgY2xvY2sgaW5wdXQgcGluIGlzIGJvbmRlZCBpbnRlcm5hbGx5IHRvCj4gdGhlIHNlY29uZCBQ
V00gY2hhbm5lbC4KPgo+IEkgd291bGQgYmUgZ3JhdGVmdWwgaWYgYW55b25lIGNhbiB0ZXN0IHRo
aXMgcGF0Y2ggc2VyaWVzIGZvciBhbnkga2luZCBvZgo+IHJlZ3Jlc3Npb24gb24gb3RoZXIgU29D
cy4KPgo+IFsxXTogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA2MTczNy8K
Pgo+IENoYW5nZXMgaW4gdjk6Cj4gIC0gcHJpbnQgZXJyb3IgY29kZSBpbiBlcnJvciBtZXNzYWdl
Cj4gIC0gbm8gY2FwaXRhbCBsZXR0ZXIgdG8ga2VlcCBjb2hlcmVuY3kKPgo+IENoYW5nZXMgaW4g
djg6Cj4gIC0gRGlzcGxheSBlcnJvciByZXR1cm4gY29kZQo+ICAtIHNwbGl0IGNvbW1pdAo+ICAt
IGJ5cGFzcyBpcyBmYWxzZSBpZiB1bnN1cHBvcnRlZAo+ICAtIHJldHVybiBpbnN0ZWFkIG9mIGdv
dG8KPgo+IENoYW5nZXMgaW4gdjc6Cj4gIC0gRml4IGluZGVudCBpbiBZYW1sIGJpbmRpbmdzCj4K
PiBDaGFuZ2VzIGluIHY2Ogo+ICAtIFVwZGF0ZSBnaXQgY29tbWl0IGxvZwo+ICAtIERpc3Rpbmd1
aXNoIGVycm9yIG1lc3NhZ2UKPgo+IENoYW5nZXMgaW4gdjU6Cj4gIC0gTW92ZSBieXBhc3MgY2Fs
Y3VsYXRpb24gdG8gcHdtX2NhbGN1bGF0ZQo+ICAtIFNwbGl0IG1vZF9jbG9jayBmYWxsYmFjayBm
cm9tIGJ1c19jbGsgcHJvYmUKPiAgLSBVcGRhdGUgY29tbWVudAo+ICAtIE1vdmUgbXkgU29CIGFm
dGVyIGFja2VkLWJ5L3Jldmlld2VkLWJ5Cj4KPiBDaGFuZ2VzIGluIHY0Ogo+ICAtIGl0ZW0gZGVz
Y3JpcHRpb24gaW4gY29ycmVjdCBvcmRlciBhbmQgYWRkIGEgYmxhbmsgbGluZQo+ICAtIHVzZSAl
cGUgZm9yIHByaW50aW5nIFBUUl9FUlIKPiAgLSBkb24ndCBwcmludCBlcnJvciB3aGVuIGl0J3Mg
YW4gRVBST0JFX0RFRkVSCj4gIC0gY2hhbmdlIG91dHB1dCBjbG9jayBieXBhc3MgZm9ybXVsYSB0
byBtYXRjaCBQV00gcG9saWN5Cj4KPiBDaGFuZ2VzIGluIHYzOgo+ICAtIERvY3VtZW50YXRpb24g
dXBkYXRlIHRvIGFsbG93IG9uZSBjbG9jayB3aXRob3V0IG5hbWUKPiAgLSBDaGFuZ2UgcmVzZXQg
b3B0aW9uYWwgdG8gc2hhcmVkCj4gIC0gSWYgcmVzZXQgcHJvYmUgZmFpbGVkIHJldHVybiBhbiBl
cnJvcgo+ICAtIFJlbW92ZSBvbGQgY2xvY2sgcHJvYmUKPiAgLSBVcGRhdGUgYnlwYXNzIGVuYWJs
ZWQgZm9ybXVsYQo+Cj4gQ2hhbmdlcyBpbiB2MjoKPiAgLSBSZW1vdmUgYWxsT2YgaW4gRG9jdW1l
bnRhdGlvbgo+ICAtIEFkZCBINiBleGFtcGxlIGluIERvY3VtZW50YXRpb24KPiAgLSBDaGFuZ2Ug
Y2xvY2sgbmFtZSBmcm9tICJwd20iIHRvICJtb2QiCj4gIC0gQ2hhbmdlIHJlc2V0IHF1aXJrIHRv
IG9wdGlvbmFsIHByb2JlCj4gIC0gQ2hhbmdlIGJ1c19jbG9jayBxdWlyayB0byBvcHRpb25hbCBw
cm9iZQo+ICAtIEFkZCBsaW1pdGF0aW9uIGNvbW1lbnQgYWJvdXQgbW9kX2Nsa19vdXRwdXQKPiAg
LSBBZGQgcXVpcmsgZm9yIG1vZF9jbGtfb3V0cHV0Cj4gIC0gQ2hhbmdlIGJ5cGFzcyBmb3JtdWxh
Cj4KPiBDbMOpbWVudCBQw6lyb24gKDIpOgo+ICAgcHdtOiBzdW40aTogUHJlZmVyICJtb2QiIGNs
b2NrIHRvIHVubmFtZWQKPiAgIHB3bTogc3VuNGk6IEFsd2F5cyBjYWxjdWxhdGUgcGFyYW1zIHdo
ZW4gYXBwbHlpbmcgbmV3IHBhcmFtZXRlcnMKPgo+IEplcm5laiBTa3JhYmVjICg0KToKPiAgIHB3
bTogc3VuNGk6IEFkZCBhbiBvcHRpb25hbCBwcm9iZSBmb3IgcmVzZXQgbGluZQo+ICAgcHdtOiBz
dW40aTogQWRkIGFuIG9wdGlvbmFsIHByb2JlIGZvciBidXMgY2xvY2sKPiAgIHB3bTogc3VuNGk6
IEFkZCBzdXBwb3J0IHRvIG91dHB1dCBzb3VyY2UgY2xvY2sgZGlyZWN0bHkKPiAgIHB3bTogc3Vu
NGk6IEFkZCBzdXBwb3J0IGZvciBINiBQV00KPgo+ICBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8
IDE4NyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxNTYgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuMjAu
MQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
