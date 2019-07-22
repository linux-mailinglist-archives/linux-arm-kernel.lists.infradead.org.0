Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76454701D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqTQQZB77zGo9NqvDhGJpuYF5XRPSphV+3bfl/1szvY=; b=UFCUWHz95ISa4O
	ojP0Wes8ban46bPphSwS3tSAIes7S4VauCaeVnH2kTpZqqPp8mtTD52xp6JsSqfgl6pazKo/RIL53
	PiM8lPgj7fRowXguX5c/UGU/CkzbueNw4CxNwIXP88vMGFQIjrl5N0dmqVJHcyPQUeZ81SwunvQhz
	Ub7VbucxOs77RX6DSfUAJ8gmdbY8wDXTXlnvJwLCsHOyirWb7qGrJbnoqzSgFokQZvY31bqsdy0zB
	EUz17o6VgHZakH4xvcYjLOcZ2VylzzBcaqIuzozjvcWgiNjXQvRBuIjXrB1gwHacNlsILUgUtJwZu
	wKme5zTpGQm1m8tZvnTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYpN-0002vh-Jm; Mon, 22 Jul 2019 13:58:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYp8-0002p0-Bn
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:57:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id d24so37683511ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=fCMx7KLosHFbgae9ScFTq6i/Za6Qpfm7uxFK3ITffxE=;
 b=QIhR8VcusTi+BJlFo+wD9KS67mSsIdcxqflU9AibXMwuObgWmyT9LQgtD9YTz0H+ww
 CVu91GkksnAIubo9dXZV+0MF4nx7musgl8XN2zFaOsvvKcIm6MC0TXaH95bjgk8zChPs
 tiFNIFsmLVoQbTrJVvdX4A2/Hv/XjWwEjFZdB0504tVXs1wFgSjO9xlKPss875xqPXDt
 0EhKwPe+QyUItamvkIiNrKLAwfoWlMOTy1Ebs/UkDwTEKxRRo6rzGBKGyIZP94+2K+Qt
 JrWM+zSu0Bd39KLJF73zV0dd9mEVvT0seHxIXAV8lMzyRylep5F7SzREBOGdENqiiZR5
 SF9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=fCMx7KLosHFbgae9ScFTq6i/Za6Qpfm7uxFK3ITffxE=;
 b=ROCPXLG/8TbEFjFA/xkHkt4GNoKjQc+6vJdrfF6slTxZNwvEJNlUuUXJMv38DreQWD
 AbHy8RPu0B65ZXa+7iy7s0nZXvzW9Ccq8WEEzrWugFSeH0FSjL6Gan5YxSTZlPGtn4GW
 8ayydI3J8RmK/oYfiWLj65Un+dN4iYtNnPUzLqr1yXADjbQcCAHZWFe3SXMOuH1SbWTl
 8gAejuF2BwYza3i9bn0UYMlxvTN/CyJfE80hgw7G6LAw/D3OLbqw59PNpsRS4coosDfL
 DVMff+8jSao3D//0FxRW+4PvJTxDZluzLHYuKBDwwevaPG3vkvxHwVXHUnELbEMQK7ig
 3LLg==
X-Gm-Message-State: APjAAAXpHpmS3b1h62j9MSxr2qSA+AI0CU3T0osHnuqUSMpv8LKoUHkp
 PUSK6jrhZV1V4/RYMsvEXIc=
X-Google-Smtp-Source: APXvYqwBK8uvo+DJD4GxsoVOHdnu74BtLYrwR6BCeehLVZyL99tko++CmwogdOypaNDHh0YtOmUSWQ==
X-Received: by 2002:a2e:9685:: with SMTP id q5mr22202686lji.227.1563803870732; 
 Mon, 22 Jul 2019 06:57:50 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id t25sm6029513lfg.7.2019.07.22.06.57.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 06:57:50 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v5 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563787330-1394-1-git-send-email-sorganov@gmail.com>
 <1563787330-1394-2-git-send-email-sorganov@gmail.com>
 <20190722095405.qdc77cb2qrgltzrx@pengutronix.de>
Date: Mon, 22 Jul 2019 16:57:49 +0300
In-Reply-To: <20190722095405.qdc77cb2qrgltzrx@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Mon,
 22 Jul 2019 11:54:05 +0200")
Message-ID: <877e8a5fz6.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_065754_406982_4607EB54 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAxMjoyMjowOFBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gRG9uJ3QgbGV0IHJlY2VpdmVyIGhhcmR3YXJlIGF1dG9tYXRpY2FsbHkg
Y29udHJvbCBSVFMgb3V0cHV0IGlmIGl0Cj4+IHdhcyByZXF1ZXN0ZWQgdG8gYmUgaW5hY3RpdmUu
Cj4+IAo+PiBUbyBlbnN1cmUgdGhpcywgc2V0X3Rlcm1pb3MoKSBzaG91bGRuJ3Qgc2V0IFVDUjJf
Q1RTQyBiaXQgaWYgVUNSMl9DVFMKPj4gKD1USU9DTV9SVFMpIGlzIGNsZWFyZWQuIEFkZGVkIGNv
cnJlc3BvbmRpbmcgY2hlY2sgaW4gaW14X3VhcnRfcnRzX2F1dG8oKQo+PiB0byBmaXggdGhpcy4K
Pj4gCj4+IFJldmlld2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBl
bmd1dHJvbml4LmRlPgo+Cj4gSSB0aGluayBpdCdzIGEgYml0IGJvbGQgdG8gYWRkIGEgcmV2aWV3
LXRhZyBmb3IgbWUgaGVyZS4gVGhlIGJlc3QgcmVhc29uCj4gZm9yIHRoYXQgdGhhdCBJJ20gYXdh
cmUgb2YgaXMgdGhhdCBJIHdyb3RlIGZvciB2NDogIltJXWYgeW91IHVwZGF0ZSB0aGUKPiBjb21t
aXQgbG9nIGFzIGFncmVlZCBhbHJlYWR5IGJlZm9yZSBhbmQgZXZlbiBhZGQgYSBjb21tZW50IGlu
Cj4gaW14X3VhcnRfcnRzX2F1dG8gYWxvbmcgdGhlIGxpbmVzIG9mIC4uLiB5b3UgY2FuIGhhdmUg
bXkgQWNrLiIgd2hpY2ggSU1PCj4gaXNuJ3QgZ29vZCBlbm91Z2ggdG8ganVzdGlmeSBhICJSZXZp
ZXdlZC1ieSIuIEkgd291bGRuJ3QgZXZlbiBhZGQgYW4KPiBBY2tlZC1ieTogd2l0aG91dCB0aGUg
b3RoZXIgcGVyc29uIGJlaW5nIGFibGUgdG8gYWN0dWFsbHkgc2VlIHRoZQo+IGNoYW5nZWQgcGF0
Y2ggKGJ1dCB0aGlzIG1pZ2h0IGJlIGFyZ3VhYmxlKS4KCkknbGwgZG8gd2hhdGV2ZXIgeW91IHNh
eS4gU2hvdWxkIEkgcmVtb3ZlIHRoZSBSZXZpZXdlZC1ieTogeW91LCBvciBpcyBpdApPSyB0byBs
ZWF2ZSBpdCBpbiwgdG8gYXZvaWQgcmUtaXRlcmF0aW5nIGFnYWluPwoKQmVzdCBSZWdhcmRzLAoK
LS0gU2VyZ2V5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
