Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBEA1591C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KzFsAsCV3mv0QfC8qKq42wi9+z3FJZymYICGAWE4Aoo=; b=Ov84JexkiHo51t
	nHTt+ZRY35OmDS0RT/MTEQzuQvU8FOhaC5KhHALrpr6V0UKy2jYcyNzCDzXGdGYVAcQIUkZ/VRuTd
	3eW81nXF01Wq6dpU+oCkfluNl+ma84xtS4SjdzkFJbBk896VkfIsqVVeQtptS7MwaUseG0cgUbmIV
	Ftc+QkUX3Ld3uew1GjyJ2ZIdd1ivoy/D7cAjaxmBd94sG3hfzDBaVZrE2RpRANkeoxTEKLTu64DVh
	2QWF1XHZRv+bsBoSZgJB3mGTzccuHxNg6M/ki6v6z/eknU4e1m//qjRdSJQlSITe7sLPbpv6Sp8u1
	YRuxeOLiEjk6PWMzxYRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WRx-0002kF-1d; Tue, 11 Feb 2020 14:23:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WRp-0002jv-TO
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:23:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id a9so3789635wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 06:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=j06OhXt2HdNNjsKGN6611A1fduNXSqoJj778Xaj1BWQ=;
 b=titghVuQ4z1LATdtyrjLe6h/3dvw+uUEY1mtSu2v6Nv9K1oz+s+Bk1BRnaUZK2kRT+
 ngBIbYxn7egayS6TjNCZ+Kz0jVzViKByaH8J32pyurg13+bVyZSY0VcaDQsYB+XU9PuF
 voHP+Vb5YmaCYcbRuIAn8j3NzMRdL2s+yl0E8qA89yKWVsOJsefhCvZuyuY520x8URV5
 +oUag269o+eqOaZm1VQsUX1zh+z35IJ7CZi2baeA3oOxzZWTLZyBKy4u9Q4SuMiAC2se
 eQtFCsasbxXsoWGWJ4Rm5Bd2vwIQ/Cr5Wvv1ko4vwjWwUNVkXFzQb3xaSLjxsgFTKmbE
 0DYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=j06OhXt2HdNNjsKGN6611A1fduNXSqoJj778Xaj1BWQ=;
 b=djubQMZgChwwWkpVqDJj23ctTZ7Q7viIRdraBqfT/WR1xUVEhSYiEA/Ca9oopEy2GG
 bPI0n/1oKU3/SudqFpt9r74nlat1MvLjBpn/z5NMLF35TytGdnFSpvQCCSnMr0ST6oMN
 SjO8TxkuzPyyUNixOkup7s5fSXQzR73yfqNaUidtoIssyyLQGT8ftSSNjZ4/Cm5jBBhW
 wajJobKFR8FqzPU/h5x6zKhutKupi7lo67VnJb6o2CfHwpLkGBoc/gHMAwod4YU9heZF
 Nxt+04jYcWVup6WRqRm1tkirUJ0HfL6ZFHlU/hsVTBSXdLTF9OpClPIGWuoR80J293Pg
 F7XA==
X-Gm-Message-State: APjAAAUe1BJfuh5mbFGgQfjm/qGHwRO4melOSz6zn0lqg0c0EBbCCV8L
 ZADCBGIDPEMr8Y8hms7fnEz67w==
X-Google-Smtp-Source: APXvYqw9TnIjEtiEXmGH2zPZcBMOqy5SO7EOjIM4uRwEXRIzdEb0qZxxv+mYdgs4PohQnBVNoRBTCw==
X-Received: by 2002:a1c:4c8:: with SMTP id 191mr5810813wme.148.1581431011629; 
 Tue, 11 Feb 2020 06:23:31 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id t9sm5637894wrv.63.2020.02.11.06.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 06:23:31 -0800 (PST)
Message-ID: <5e42b8e3.1c69fb81.6cd1f.ba7f@mx.google.com>
Date: Tue, 11 Feb 2020 06:23:31 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Report-Type: build
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc1-6-g74a44bed8d93
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.6-rc1-6-g74a44bed8d93)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_062334_010002_61A680A5 
X-CRM114-Status: UNSURE (   3.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YXJtNjQvZm9yLWtlcm5lbGNpIGJ1aWxkOiAzIGJ1aWxkczogMCBmYWlsZWQsIDMgcGFzc2VkICh2
NS42LXJjMS02LWc3NGE0NGJlZDhkOTMpCgpGdWxsIEJ1aWxkIFN1bW1hcnk6IGh0dHBzOi8va2Vy
bmVsY2kub3JnL2J1aWxkL2FybTY0L2JyYW5jaC9mb3Ita2VybmVsY2kva2VybmVsL3Y1LjYtcmMx
LTYtZzc0YTQ0YmVkOGQ5My8KClRyZWU6IGFybTY0CkJyYW5jaDogZm9yLWtlcm5lbGNpCkdpdCBE
ZXNjcmliZTogdjUuNi1yYzEtNi1nNzRhNDRiZWQ4ZDkzCkdpdCBDb21taXQ6IDc0YTQ0YmVkOGQ5
Mzc4MmFmZmI3MDdhMzM0NjliZGE3MDUyYjQyMDcKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdApCdWlsdDogMSB1bmlx
dWUgYXJjaGl0ZWN0dXJlCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKRGV0YWlsZWQgcGVyLWRl
ZmNvbmZpZyBidWlsZCByZXBvcnRzOgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYWxsbW9kY29u
ZmlnIChhcm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBzZWN0
aW9uIG1pc21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmFsbG5vY29uZmlnIChhcm02
NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBzZWN0aW9uIG1pc21h
dGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRlZmNvbmZpZyAoYXJtNjQsIGdjYy04KSDi
gJQgUEFTUywgMCBlcnJvcnMsIDAgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVzCgotLS0K
Rm9yIG1vcmUgaW5mbyB3cml0ZSB0byA8aW5mb0BrZXJuZWxjaS5vcmc+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
