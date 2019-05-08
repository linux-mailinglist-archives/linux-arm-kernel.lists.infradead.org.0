Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE4E1767C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwcbGN/gPf69gljcJimfg88GG3Phm0qd/e3i3sT9MQA=; b=pIOyN5CN4CkHHo
	Ax62xo73Hd+GqqD7XlSnETz9wJKSFrpiG/Ae26PhV8mzsWwnzwYGEizPA5pULckF+najVSGeBWp9F
	pmZLzPJ5aIKUD3aTA6McMj8BeimkOacStpqtWPnHS+s482PuAoWujnQ9W3yE225RQeQigQ8Qdjvcw
	bUGiG7UuQ6opThL5ZWqmv/wdk6SS0wLoqn6g6ffdqc+OZ+RHyrWIwv93rJdj+Gs6oftbrU4srJnbK
	QWYdcptHPaSqtfcGNU4izlqwn4miuTvydTrWv1m8NtZ5gl0kl7cMFhtfw37RZISdsHItz/2/e66Z0
	fvcEgtbcZ6Lx068l4tPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKUT-0000cB-6J; Wed, 08 May 2019 11:12:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKUM-0000br-VM
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 11:11:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id 198so2738683wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 04:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=NVYGOZcqjk78nflqXOFona2LfzGNJNT4gdq4AY8AIEw=;
 b=K8kJxphPZjrzRcD2kCbNStQL12MyFr4laIHIBXmGtmvmN258PuBxH/FJNcYbFMtrmP
 FeV0S7uUVLg02wK0UetEetYIweB43aAQKVZeSAaQmRF927HZUaajugaHChRjZuVFn/ef
 PUPuC/+GDuUDPgRCnPoyOVezIVNSNKDbXJ8iWBgMiMB713ZW10Dnk7j02m/S2WK0aJCk
 QS/ZrrwnbpjLazij1KtO/KTDmsBEgexPdIb1pqqXd+7sFcslFJDlY8aVgwZzn9ITsQeI
 6IzrzfkSTCB6/5F/QHWood4P5k/0d1s1qHNGm0mAOePeGioKocrZqReKqUujVOKLF73a
 8vwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=NVYGOZcqjk78nflqXOFona2LfzGNJNT4gdq4AY8AIEw=;
 b=jUD3MObU5lbBKmhSnakh2K9twRwQ0+eGC2oFTM33Z/Mw4d5UwdouSk/4wD9I4KRRPT
 SAT10JGqWQsdSC6zy1iQyzbU03llNusXZFmmcrLQaWk6JDxxnUIXEs1eqxh1T6myX3uC
 faLeIGZxPckh/BsoYWdLiDum2SxNaA+KJNRrhvLYKazYe0w+TYAeOFHEzpRUHdw1FQbZ
 uo2ZZle+A6YQDzzQRyyJLLf/bgKZYc1wzojcL/Pxk3ZSKVf22WfkYv7X9s9seSSB+3Bb
 baWRfGrj7jC5gc9g71EJHCAo5dotLDJ5yBD1yTkyEltRo2tKHHhjjvUfc7pr9O5t7rpS
 +HFA==
X-Gm-Message-State: APjAAAXK8H6jBzBSIVBwRFHahjlaW2YVL+uSvQ/HN3F4ntKWu43kSKBL
 jIUvY+t7jij8CYwliXmLrz3Ttw==
X-Google-Smtp-Source: APXvYqwcU01G6ndTzQz1Y4MJtFrGZO15pRBrIU8F1lFAZGr6QxxEeMP9xnO/lLu31doNjDITWUsOPg==
X-Received: by 2002:a1c:67c1:: with SMTP id b184mr2623521wmc.12.1557313912890; 
 Wed, 08 May 2019 04:11:52 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id c10sm35550508wrd.69.2019.05.08.04.11.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 04:11:52 -0700 (PDT)
Date: Wed, 8 May 2019 12:11:50 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH] mfd: ab8500-debugfs: Fix a typo ("deubgfs")
Message-ID: <20190508111150.GS3995@dell>
References: <20190430151726.7032-1-j.neuschaefer@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430151726.7032-1-j.neuschaefer@gmx.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_041155_006043_8DE23674 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Colin Ian King <colin.king@canonical.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAzMCBBcHIgMjAxOSwgSm9uYXRoYW4gTmV1c2Now6RmZXIgd3JvdGU6Cgo+ICJkZWJ1
Z2ZzIiB3YXMgbWlzc3BlbGxlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBOZXVzY2jD
pGZlciA8ai5uZXVzY2hhZWZlckBnbXgubmV0Pgo+IC0tLQo+ICBkcml2ZXJzL21mZC9hYjg1MDAt
ZGVidWdmcy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGlu
YXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNv
ZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBC
bG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
