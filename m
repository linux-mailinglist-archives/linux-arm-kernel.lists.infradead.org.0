Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F84310FFA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8qrTpA35Bslzzxcex4w4naZotQbRHXFrtD9zgnPDZv0=; b=Wk0
	w0g/NjbrapOK6WqDBueVdY/vSkxHxew9NH0AhMqMwO+lV3NtWWNLp1S8xBPOwqs0wmOp448vbEgmV
	0FBvKhnlfyDkY22iHLBcV5CZQ6dME8Y+5SDURFyLWgl4P6nrz+0BwNlQ/tK1C9K1+B2iSwFHTg9ZE
	faQ1dVCou2i/rPaBpnjMe448RM8EcmuIQBsoKPFckomS+59DyYekTcHT3h3bEaH2RGMWncQs6hM9C
	S1hzm/LrizhEzYGwNTaUhe37bvJqtVr9V3O52iSPYxmX9KdMpAwGbrB+/p2+G30rmO8mh0QGzYv6I
	aL5wS2POv5q04ZB9Q4+3KL+FaZFaNSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8tb-0002Tc-AB; Tue, 03 Dec 2019 14:11:19 +0000
Received: from mail-vs1-xe36.google.com ([2607:f8b0:4864:20::e36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8tT-0002TA-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:11:12 +0000
Received: by mail-vs1-xe36.google.com with SMTP id x18so2428325vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 06:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=qTLUegBYXPVqSzZ8JeB8YIYZDh+eRGVTe3arH73i1Hg=;
 b=Xhbiy6OrTTxt/hCViobblDgaFs+4gw6bycEwq6/tOkvF+lgRF1BEfGAPoBLnE7U/Y2
 +gnLcX6Fsc7SluFFge3jvj0bVQK8yLgUVufH7ts+yhYtu0hA6mwAFDMt8J+Wq9QWMFg+
 VIDiIHVthFhl2knwEHl3jcjUH2Q9uYR+XN7n+EZ6H6C1QVOnEA0ga5y3wK88fvh70mcR
 J+DO/5idC+hegm6yXRVzck6gaXYA2TxnTK7Pf4I3PSkOPGZEyxlS2Jillh1MvfAelNjJ
 0MPhjq9G8i6f5VNBtuaokQ85rXoq4ykd3IQ9qUHUGKUKJW4IDp4dM4zzLz5FcVlGDgZp
 QpSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=qTLUegBYXPVqSzZ8JeB8YIYZDh+eRGVTe3arH73i1Hg=;
 b=FUrvHvvhC+OnXKB9Aq4aJL00vdiDNc930EEvR0nYtpAPCyhIQTBwSj0lELIw7XxYWE
 ED7AZRaDmw3JV0E6oRRg6eDx0tAU9WRMyXlnm9eZ6+a3krozeFRuWvT+HnuBJiLyzzHy
 QzFJVlTFueBUcD7Ekz4i6Kx+r8km3te9hkffmdUj1e0mG9L0J1q51gtRVvlnw4kksXlB
 awjvQXp6lanAw3lIQ2BmaYUcxfeoKfUtqjkuSJAmG+smysaLonftmdqhVUrZCoQxmxTa
 +W+N9CSoAGbGqo9WQebkhpbDBNxFw/U0QaoCjkr8Y/oCDIId6Z7LnCL7P186LAYaVQqB
 0ytw==
X-Gm-Message-State: APjAAAWCL9caoKzio+zxwOB9O73uYalIieFkYmr+2a32FLE/51ZXPi4D
 VDQWc2FLljcqB9JSBiIkMi7e/KYToVMulZH+POU=
X-Google-Smtp-Source: APXvYqzqHb2yKwVKshU3kZPfBLtKyqntzMHOciBiiSeYXfaYezKwTIVEeE+9Ppgk5FV95Idtp2s3vmJRbeEykzJduPA=
X-Received: by 2002:a67:fa52:: with SMTP id j18mr2734055vsq.144.1575382270104; 
 Tue, 03 Dec 2019 06:11:10 -0800 (PST)
MIME-Version: 1.0
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Tue, 3 Dec 2019 19:40:59 +0530
Message-ID: <CAOuPNLh8dsSCq850afbj4OiHhZ2swBWZP=BTUrXrXhdpTjZs+A@mail.gmail.com>
Subject: interrupt handler not getting called after resume
To: Kernelnewbies <kernelnewbies@kernelnewbies.org>, linux-pm@vger.kernel.org, 
 open list <linux-kernel@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_061111_679704_75707621 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e36 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

I have one general query.

If an interrupt handler is NOT getting called (for one device) after
the system resume (from snapshot image), then what could be the issue?
Note:
* The suspend worked perfectly fine.
* The runtime suspend/resume of the system is also working fine.

If anybody have experienced this situation and fixed it, please let us know.
It will be a great input for further debugging.

Regards,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
