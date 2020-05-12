Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50671CF555
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UvTdR2rBv3Kj0E0ZltD8HJEXiRa+pb2FZ7vJAn6McPg=; b=H9YHgjEw3rfTWa
	HnvpqZe/fCzJ+sX+sohHO3TyauzBY2w2BRTeFxow+Nbv+EK2pEL37is1w+UAk7NfuZ0cEn9iDr/G3
	Ex5MnklkfyZOQ19myz6aBJs8Re730hdoHCixByxsFaUaCxIIZQ+GyHpDVOdjNOC/Kd3ngmme2DWXu
	v9zaKlCoyBEDebwbq5iJj72P71ITtaBQsE565odNPEAdtPxetJpKGRfy9c483nECW/JMKabi/M4mC
	x8CZX+tt1d4xGHsD20IgtlJu9rTqrnfPbo9pIjaWz+8hgkYIB6zUw7y0dgsBIa4u28r16muCpPpZJ
	QoTImNCwmZReeTq+hbpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUiP-0000Gr-2V; Tue, 12 May 2020 13:12:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUiG-0000C8-JQ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:12:49 +0000
Received: by mail-lj1-x241.google.com with SMTP id l19so13598493lje.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 06:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=x4QoL4i05TKgWMM+1LyVNxxvylPGStkJzsuQ89LMgxY=;
 b=nrx+Fp7aDIIrY8QwnIUjLXbVoFDDUNd1LNLjAe+DfecmbGEsTwFruBhXNCZnlXABfA
 aJmA8E7KF2xlVlaoBKDXfwaPYyis+K+tuKVTB3DWNrdwihxqR0FHN9Jlkg+n2F2f3PCY
 Ng5LMqqw/sRBn0AjHq9DV3MfAk+ysNWzu9HxkDNVeJBVHls6fls/Yi9ugmQ1ZV4KgQc0
 aedgSyBB1dyisuVNIiH3nA3Ofi76vzDRrBb7mHoBypTPflCdg3bfaQVXOcgU4qrwxct7
 nG4N6qfK7ZaZAjqOZs0xp1FzMemIjvA/K/++8wEuwa/7M7/OJF/f8aYFzUg3s1hLqq0M
 R3rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=x4QoL4i05TKgWMM+1LyVNxxvylPGStkJzsuQ89LMgxY=;
 b=lcN+AL9BokZlElIHHv96zioIwJI8bRiMgciF+eaabBc+ec6JpCugmE0pa2P1FdXa9A
 YBS22ZqM4TYYMSVm80bjawo3FeCODd5dI6cna3ujEn+h9rbB+pnW3q0uVzqU2/IF2keU
 ERNw7iDVMyZOx+L/3uSCQx0VNYszYq9iGILS5fCIB+LsaoeLZ7doar2diQX0GJn+WaSh
 MtBgE/fKDlghDvTfoGVqE9Y+ao+bd45QGhbXuNW9ydLbUEg2MBNOPeJbT7LfZA/yWRoz
 RKV7TiiyE3/GTa/r2qclduGgOBmre/5hGbBUfDyyXrEKQUfU+eAJn2D/xJbqq7GerRtu
 vOVg==
X-Gm-Message-State: AOAM530dqVEqJZ/KqNnj1CFGVfV/HpMd+cxPnC8GcRlSfchvZD4ssQXW
 pgjIM7hLen7RX42PASIIDwIkLA==
X-Google-Smtp-Source: ABdhPJy0YMoO9u2zm/VACcBRZczdnhx/61vufXkw/2C8CQY/GdstDCr98wXZtYvH5Sihw6HrCM8Yjw==
X-Received: by 2002:a2e:9048:: with SMTP id n8mr14151768ljg.122.1589289165890; 
 Tue, 12 May 2020 06:12:45 -0700 (PDT)
Received: from jade (81-236-179-152-no272.tbcn.telia.com. [81.236.179.152])
 by smtp.gmail.com with ESMTPSA id j22sm12745293ljh.107.2020.05.12.06.12.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 06:12:45 -0700 (PDT)
Date: Tue, 12 May 2020 15:12:43 +0200
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] tee subsystem client uuid for v5.8
Message-ID: <20200512131243.GA10028@jade>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_061248_645662_6566DE77 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tee-dev@lists.linaro.org,
 Vesa =?utf-8?B?SsOkw6Rza2Vsw6RpbmVu?= <vesa.jaaskelainen@vaisala.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gYXJtLXNvYyBtYWludGFpbmVycywKClBsZWFzZSBwdWxsIHRoZXNlIHBhdGNoZXMgZW5h
YmxpbmcgR2xvYmFsIFBsYXRmb3JtIGNsaWVudCBVVUlEIGdlbmVyYXRpb24KZm9yIHRoZSBPUC1U
RUUgZHJpdmVyLgoKVGhhbmtzLApKZW5zCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29t
bWl0IGFlODNkMGI0MTZkYjAwMmZlOTU2MDFlN2Y5N2Y2NGI1OTUxNGQ5MzY6CgogIExpbnV4IDUu
Ny1yYzIgKDIwMjAtMDQtMTkgMTQ6MzU6MzAgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBH
aXQgcmVwb3NpdG9yeSBhdDoKCiAgZ2l0Oi8vZ2l0LmxpbmFyby5vcmcvcGVvcGxlL2plbnMud2lr
bGFuZGVyL2xpbnV4LXRlZS5naXQgdGFncy90ZWUtbG9naW4tZm9yLTUuOAoKZm9yIHlvdSB0byBm
ZXRjaCBjaGFuZ2VzIHVwIHRvIGM1YjQzMTJiZWE1ZDVlNWUzZDRmMGFmNjQwZTJlZjhhMWMxYmIx
Njc6CgogIHRlZTogb3B0ZWU6IEFkZCBzdXBwb3J0IGZvciBzZXNzaW9uIGxvZ2luIGNsaWVudCBV
VUlEIGdlbmVyYXRpb24gKDIwMjAtMDUtMTEgMTQ6MTE6MzMgKzAyMDApCgotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFkZHMg
dXRpbGl0eSBmdW5jdGlvbiBpbiBURUUgc3Vic3lzdGVtIGZvciBjbGllbnQgVVVJRCBnZW5lcmF0
aW9uLiBUaGlzCmZ1bmN0aW9uIGlzIGFsc28gdXNlZCBpbiB0aGUgb3B0ZWUgZHJpdmVyLgoKLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQpWZXNhIErDpMOkc2tlbMOkaW5lbiAoMik6CiAgICAgIHRlZTogYWRkIHN1cHBvcnQgZm9y
IHNlc3Npb24ncyBjbGllbnQgVVVJRCBnZW5lcmF0aW9uCiAgICAgIHRlZTogb3B0ZWU6IEFkZCBz
dXBwb3J0IGZvciBzZXNzaW9uIGxvZ2luIGNsaWVudCBVVUlEIGdlbmVyYXRpb24KCiBkcml2ZXJz
L3RlZS9LY29uZmlnICAgICAgfCAgIDEgKwogZHJpdmVycy90ZWUvb3B0ZWUvY2FsbC5jIHwgICA2
ICstCiBkcml2ZXJzL3RlZS90ZWVfY29yZS5jICAgfCAxNTIgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvbGludXgvdGVlX2Rydi5oICB8ICAx
NiArKysrKwogNCBmaWxlcyBjaGFuZ2VkLCAxNzQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
