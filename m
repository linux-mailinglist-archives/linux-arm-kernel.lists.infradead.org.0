Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599F217CBF4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 05:49:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v1kH3nPBaXyuqYWihwtKBdU8BFirwPjNTyJ44jo93g0=; b=ZLgiqkRY21oAQK
	uZkfgTAY18ncPYomuVzMTWZE1deRPjAQmLnj1gnHP2adGiu6l4M2haprKk4Hv+i5yvgLKSE5kQGWs
	JoCi1mQesJ+SJKEi1iqVWe33ISars4eKaPl1z6EEZH/jlFvPaRuW2lFg8xXoCR5xpNw7d7Dls3NvV
	BJylbsW+upwSxLfPN87TLczTKuWDPf26FtHBKk95vxvjL4m6UBXT0wF7FP0C7d+s3PRvTicmcm0Dp
	NK5BgwlL6LXFVVEWeKtEGogC/5378BTlJ2ZsHcJou9rWxTuRgWc6mHndRzgu+9lTX6Fooe3Up4DO2
	zb0kbiFcrh+BCug36jkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAROX-0000YF-Qa; Sat, 07 Mar 2020 04:49:01 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAROL-0000Xf-E2
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 04:48:50 +0000
Received: by mail-pj1-x102c.google.com with SMTP id mt4so398998pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 20:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=MlIYrDe+m0LO4ybNrthTnnOUGWi/HF14GTOZqugObos=;
 b=txFE6TLoWHebHNzAhxLTtUi//Jcd8jzNWfi/ZLiE0AT3wn43J3H+PbdACfc1TaATT4
 2j/9puxYidJDy+x8z8opA9zpdyHSfg2uV8qDiu2y0UTY/pOizDdI9icIjJ36DPTfwL5k
 Dj1Obi7ESiC9PV//69cnFefrAlQA9g9VvJVSv9n4IhiJ9I7A9lj8wcvvSQ18p/U7qoon
 tC34I19G1QkUdh9p21NGTdvsu8dKL6MHk2bXnLkZ1iReO7XVcarDiGfOpsWGQmI7EylB
 KqT0PiBA7O4XHtysGajGFcY86mFab3rWO7gxfMI8w0jXw9bxqIIl+yhcyLlIn8Sc8Plc
 DiEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=MlIYrDe+m0LO4ybNrthTnnOUGWi/HF14GTOZqugObos=;
 b=HkI06wrsJOSGxcSw5MUMXCbkWsxOjAYD5QscmIrG6/JDB7lrS1NEIw+fx3itH+L6BK
 f781Sc1b/Vm3MsrnxcLaN3fF4AGuNSNBqeqkQzSMPYVoxHcHhrjLj9LMi+SsBzU6JuHJ
 +uW/CEV0WmU1bzkA2mbO2Wrpm+MKeLuD0nxkM7votGfGw4aBBSZchiSaJya0AHyX3n0x
 3A2VJiW66kCQdMm4rRr7+uCREi4amxV4n0V/T5rhg2A+VBR8qlT3xNWnS1y3rkP6d2PM
 SuYp8lLfEl7tezTLyXtg6UI8dKHve+Ii6BC3A96DCty6MXyJsYo2I0Me4l9bzuANwJo/
 6xRA==
X-Gm-Message-State: ANhLgQ3i0AU6liZRgkNI5uHFrCcNKjisBOs1seVdxGHVZry2tMNFeVQW
 5KMW0gKYkCPhWcBZzFYYLzQrqV4MlZw=
X-Google-Smtp-Source: ADFU+vtL90EpLgDS47oOiCTYM+jsK+ow/X/MXd40Z7cxDxqSrwH3P425nZnfj8yj5nMtdp5vkv3BZQ==
X-Received: by 2002:a17:902:b201:: with SMTP id
 t1mr6249742plr.127.1583556525207; 
 Fri, 06 Mar 2020 20:48:45 -0800 (PST)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id v123sm10423869pfb.85.2020.03.06.20.48.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 20:48:44 -0800 (PST)
Message-ID: <5e6327ac.1c69fb81.36d16.c978@mx.google.com>
Date: Fri, 06 Mar 2020 20:48:44 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc4-20-g215ae3ad8d91
X-Kernelci-Report-Type: build
Subject: arm64/for-kernelci build: 3 builds: 0 failed,
 3 passed (v5.6-rc4-20-g215ae3ad8d91)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_204849_508843_9B7F092A 
X-CRM114-Status: UNSURE (   3.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102c listed in]
 [list.dnswl.org]
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
NS42LXJjNC0yMC1nMjE1YWUzYWQ4ZDkxKQoKRnVsbCBCdWlsZCBTdW1tYXJ5OiBodHRwczovL2tl
cm5lbGNpLm9yZy9idWlsZC9hcm02NC9icmFuY2gvZm9yLWtlcm5lbGNpL2tlcm5lbC92NS42LXJj
NC0yMC1nMjE1YWUzYWQ4ZDkxLwoKVHJlZTogYXJtNjQKQnJhbmNoOiBmb3Ita2VybmVsY2kKR2l0
IERlc2NyaWJlOiB2NS42LXJjNC0yMC1nMjE1YWUzYWQ4ZDkxCkdpdCBDb21taXQ6IDIxNWFlM2Fk
OGQ5MTc4MmI3ZTg4ZTA3YzI0NmExNTAxYTcyNGUxNjQKR2l0IFVSTDogZ2l0Oi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdApCdWlsdDogMSB1
bmlxdWUgYXJjaGl0ZWN0dXJlCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKRGV0YWlsZWQgcGVy
LWRlZmNvbmZpZyBidWlsZCByZXBvcnRzOgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KYWxsbW9k
Y29uZmlnIChhcm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBz
ZWN0aW9uIG1pc21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmFsbG5vY29uZmlnIChh
cm02NCwgZ2NjLTgpIOKAlCBQQVNTLCAwIGVycm9ycywgMCB3YXJuaW5ncywgMCBzZWN0aW9uIG1p
c21hdGNoZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmRlZmNvbmZpZyAoYXJtNjQsIGdjYy04
KSDigJQgUEFTUywgMCBlcnJvcnMsIDAgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVzCgot
LS0KRm9yIG1vcmUgaW5mbyB3cml0ZSB0byA8aW5mb0BrZXJuZWxjaS5vcmc+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
