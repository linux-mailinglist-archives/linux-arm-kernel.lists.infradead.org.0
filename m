Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18BF18C788
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 07:35:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WFCUpTEBCHrVBEunMtv+1mwATebO/hm0TVUJgwsTZM4=; b=WYOnaOtKEODRB0
	bPODtXsB5abLoahB6qlHHbVrtrFJr7f0a/SmM8aRP8a01+r8dRf3F7OBW8mkzx6KhjoVUrKRhZuTx
	mmF8bgxHjRW0jLVhEXbmq/QuLXfh//m0+He97TrZoU+X5n+3OAKqqvXknCC3ilsb70EBOMZzbIXTz
	brs8BxgIVE12lctmnPDUql9O8aBHc+cHGhbVqjxs64jxT/6FZSoe8iVzshs7YFIUhsbcJUNpaviUW
	oGcyZAL1cTMpMD/gu+zbVdIGrK5hFkfGpRVsodXJ8o3AJgsv8704iFqDFsQopqCIM505vAv3znupl
	DGHNvAKIRMjzUlAFtOiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFBFE-0007Xr-GH; Fri, 20 Mar 2020 06:35:00 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFBF6-0007XD-CX
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 06:34:54 +0000
Received: by mail-lj1-x241.google.com with SMTP id u12so5243970ljo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 23:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=EN5kJIjrDw1mgoma/zwe6C2IRFI0DiYfgabsVqUwoBk=;
 b=UFzo6MVBPLDq6LaahJnJhgqy9QcASg2VsWxFtxxJqOCPPcNxMkH2gdkN/rL88RNMWE
 lv3Bun7kMu7e/k8R4ULX7rOUxZaCHBZfBMmyC5QBMxRRwKpGUYzOi4GVdsIG0vfJLjHY
 21lJv4xEP4IehCfnWAe7FW9ICeRSK3cXcvKJIZ+bqM/PpwoRNfTSQLlIxPWHexvEi4w5
 nF5/tTXgUBIAefZNhp2dfsKIWxBiV4BSyKVFtsq0FddxSe+OIlBHdAR3cI88Sx+Gx9Lg
 7WmJ4Qv8TFe5hE1V2FbBR6nGMzqac/qyj/GNq5KsZ3hWOm0DxjKrPUY9029XVfDQTjkV
 nhkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=EN5kJIjrDw1mgoma/zwe6C2IRFI0DiYfgabsVqUwoBk=;
 b=TFGWfzcc9hs/KkM34uzNDpYthCBsWmwVWH7vNpvXWPJhj/XQCTKjBaiRNSpJ0E7gxG
 jFBmdmW7kmKs4KqSryQ2kIMO1NMcCNkAKh1I8NIHrTSjfvBmu+CTphfchVuDxJDY/SVJ
 TKntXTbT6QQPgYMPRzKq59o7tNFVdcfs4a4ZusBoj3ZPB3mh0WRzEcm5TQldyoZaY+VR
 19VDWB2JZtwU+QFMETP5LZ2hS6vsaGJIOcPJOI/5y9bKcLqL8ut8O0baAkBOGWmINa1k
 h/T5QoPga4gRiaUOG4ek0leGDdNmpNoqjLJlT7wsY9lOsOBdeZ19akiBX3bCdPEhHv3m
 oL+w==
X-Gm-Message-State: ANhLgQ3A6/uu3BaLfral8m5Q8p8VPFwO5k+CBMRLhm7bENj2VzSQtK8S
 lxVY6W0SQyBR2osxCUTcetJEzQ==
X-Google-Smtp-Source: ADFU+vsBf8yKtP2HvAQixVnArfLXpQKief8SGtO73/OQ886ubDAeeOSQpYCwMKdMyAwsibcXp7pgLA==
X-Received: by 2002:a2e:9897:: with SMTP id b23mr4397938ljj.97.1584686089605; 
 Thu, 19 Mar 2020 23:34:49 -0700 (PDT)
Received: from jade (81-236-179-152-no272.tbcn.telia.com. [81.236.179.152])
 by smtp.gmail.com with ESMTPSA id f16sm2732885ljj.34.2020.03.19.23.34.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 23:34:48 -0700 (PDT)
Date: Fri, 20 Mar 2020 07:34:46 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] another amdtee driver fix for v5.6
Message-ID: <20200320063446.GA9892@jade>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_233452_569199_F0CAB5CB 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tee-dev@lists.linaro.org, Rijo Thomas <Rijo-john.Thomas@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this AMDTEE driver fix for an out of bounds read in
find_session()

Thanks,
Jens

The following changes since commit 11a48a5a18c63fd7621bb050228cebf13566e4d8:

  Linux 5.6-rc2 (2020-02-16 13:16:59 -0800)

are available in the Git repository at:

  https://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-amdtee-fix2-for-5.6

for you to fetch changes up to 36fa3e50085e3858dd506e4431b9abd1bcb1f542:

  tee: amdtee: out of bounds read in find_session() (2020-03-10 08:12:04 +0100)

----------------------------------------------------------------
tee: amdtee: out of bounds read in find_session()

----------------------------------------------------------------
Dan Carpenter (1):
      tee: amdtee: out of bounds read in find_session()

 drivers/tee/amdtee/core.c | 3 +++
 1 file changed, 3 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
