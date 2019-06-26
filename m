Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4694756173
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 06:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcEGGA9RNhl8D/3Cmie00GsMbl+89j+R9VF5NzqG4rw=; b=taodP3FyTl0+2Q
	64xk4qvVSpfpHGADhZzsOM7GVbcML+kP+Ku0jPQI9ghpBr4fa86Gy07n1d2WUKqdM+q61yoYjp5Vl
	eWMCFGL8PueeprG1YAg3o3FG99LYFrS9OjpDrOn//H1ja94rE47hz+Nb0H6CrPKYqJAgHX10fw5hC
	cHU4HIWPTALX/CMTve3Z31yv/mhsVOMllmqnPwWIZildeztEELg4BnCC89Nuq1NFtuRqggS7bTBJT
	w5VnzgpBEEP2RsdByYjr25Ml7HIG32O6jApF7Xy/qATgL05ittESedtmwH5/t2wvRR4CLq+M5qA5Z
	rKyOvAsy+RCHDd77I5yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfzc4-0005G0-CM; Wed, 26 Jun 2019 04:32:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfzbR-0005FY-Sd
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 04:32:15 +0000
Received: by mail-ed1-x543.google.com with SMTP id i11so1259107edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 21:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JGn88fpcggP80EkMgEhpFVRWZldlC/S/PfPy9x+l7EY=;
 b=hi8YC5l2qnHJT78/R3Yl+wiWfpyHlT9IXtzh1VS1PICGF31g3Sd4fkgIjvpsp8FRoa
 WlqxY21l97Rs1fnUZYuObwB0GeRk1VP1/z8vP6UQmCvp04MzAgdWJ3ZXXSogouCRq06O
 s597zeVBW3g4IN6wQn6Wu6HlR7dlexDixfOpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JGn88fpcggP80EkMgEhpFVRWZldlC/S/PfPy9x+l7EY=;
 b=ZP6jhyn9ipRcE9HDzvk+IgA4d68EvsZfduIlTPNhyZ+PvZhZ4A1ENrOGaInOl1R90M
 SH3gwc84YYAUvs7f2jLgcZT7AyNR0ctE+vCJJ1pxxrXLQaC638n8sN2q+GehJ/3iY3kl
 E0cznpiii2JNld6ej716WbX4b6h8j8Y6LlIDUwOmn/kAUKWzBAwZ7dbxO1n8cEZv1RH+
 77SHpLl1WFOE4/ma+s6b54jH9tP8WinAsa/UAkr/Aj96/uc2PsFr7/aJkmYTvWpHs1pR
 8isA5GKtW7T1wwHoKh3FuumQtaACUVBemmmxQZCiHLIacS0xZNoWxf1N/FPQjpjg5VAe
 v/Nw==
X-Gm-Message-State: APjAAAX3GfG8LpfnsmOowzQQkOoaPulGK8A6Sf6roRreT4q64lb/NrNV
 9h1jNk6O8dne9njnwvo39EsrHWLUBe42xA==
X-Google-Smtp-Source: APXvYqz1XwQ4bGnGbBuU+gyBm7lda+4j8bZVBb1Ihr+pFv/2heqHScphigb4GpAYsGS84p1xkBPaYQ==
X-Received: by 2002:a50:fb0a:: with SMTP id d10mr2510550edq.124.1561523532564; 
 Tue, 25 Jun 2019 21:32:12 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id y42sm5192213ede.86.2019.06.25.21.32.12
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 21:32:12 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id f15so1009508wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 21:32:12 -0700 (PDT)
X-Received: by 2002:adf:f246:: with SMTP id b6mr1497996wrp.92.1561523106726;
 Tue, 25 Jun 2019 21:25:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-7-frederic.chen@mediatek.com>
 <20190509094846.GA65444@google.com>
 <1561464978.23799.37.camel@mtksdccf07>
In-Reply-To: <1561464978.23799.37.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 26 Jun 2019 13:24:54 +0900
X-Gmail-Original-Message-ID: <CAAFQd5D8WDQJaN8SYKwOXyC9-YPRC1U58HirPVzL5969MSvkgA@mail.gmail.com>
Message-ID: <CAAFQd5D8WDQJaN8SYKwOXyC9-YPRC1U58HirPVzL5969MSvkgA@mail.gmail.com>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek DIP driver
To: Frederic Chen <frederic.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_213214_049212_FB239264 
X-CRM114-Status: GOOD (  25.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Shik Chen <shik@chromium.org>, devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 zwisler@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Frederic,

On Tue, Jun 25, 2019 at 9:16 PM Frederic Chen
<frederic.chen@mediatek.com> wrote:
>
> Dear Tomasz,
>
> Would you comment on the following points in further? Thank you for the
> review.
>
> On Thu, 2019-05-09 at 18:48 +0900, Tomasz Figa wrote:
> > Hi Frederic,
> >
>
> [snip]
>
> > > +int mtk_dip_pipe_job_start(struct mtk_dip_pipe *dip_pipe,
> > > +                          struct mtk_dip_pipe_job_info *pipe_job_info)
> > > +{
> > > +       struct platform_device *pdev = dip_pipe->dip_dev->pdev;
> > > +       int ret;
> > > +       int out_img_buf_idx;
> > > +       struct img_ipi_frameparam dip_param;
> > > +       struct mtk_dip_dev_buffer *dev_buf_in;
> > > +       struct mtk_dip_dev_buffer *dev_buf_out;
> > > +       struct mtk_dip_dev_buffer *dev_buf_tuning;
> > > +
> > > +       if (!pipe_job_info) {
> > > +               dev_err(&pdev->dev,
> > > +                       "pipe_job_info(%p) in start can't be NULL\n",
> > > +                       pipe_job_info);
> > > +               return -EINVAL;
> > > +       }
> >
> > This should be impossible to happen.
> >
> > > +
> > > +       /* We need RAW and at least MDP0 or MDP 1 buffer */
> > > +       if (!pipe_job_info->buf_map[MTK_DIP_VIDEO_NODE_ID_RAW_OUT] ||
> > > +           (!pipe_job_info->buf_map[MTK_DIP_VIDEO_NODE_ID_MDP0_CAPTURE] &&
> > > +                !pipe_job_info->buf_map[MTK_DIP_VIDEO_NODE_ID_MDP1_CAPTURE])){
> > > +               struct mtk_dip_dev_buffer **map = pipe_job_info->buf_map;
> > > +
> > > +               dev_dbg(&pdev->dev,
> > > +                       "can't trigger job: raw(%p), mdp0(%p), mdp1(%p)\n",
> > > +                       map[MTK_DIP_VIDEO_NODE_ID_RAW_OUT],
> > > +                       map[MTK_DIP_VIDEO_NODE_ID_MDP0_CAPTURE],
> > > +                       map[MTK_DIP_VIDEO_NODE_ID_MDP1_CAPTURE]);
> > > +               return -EINVAL;
> >
> > This must be validated at the time of request_validate. We can't fail at
> > this stage anymore.
>
> After the modification about checking the required buffers in
> req_validate(), we got failed in the following testRequests()
> of V4L2 compliance test. The V4L2 compliance test case doesn't know
> which buffers of the video devices are required and expects that the
> MEDIA_REQUEST_IOC_QUEUE succeed when the request has any valid buffer.
>
> For example, when the request has MDP 0 buffer only, the DIP's
> req_validate() should return an error since it also need a buffer
> from RAW video device, but it make compliance test get failed.
>
> May I still check the required buffers in req_validate() in the next
> patch? I will add some note to explain that the compliance test failed
> item is related to the limitation?
>
> =======================================================
> int testRequests(struct node *node, bool test_streaming)
> // ......
> if (i)
>         fail_on_test(!buf.qbuf(node));
> buf.s_flags(buf.g_flags() | V4L2_BUF_FLAG_REQUEST_FD);
> buf.s_request_fd(buf_req_fds[i]);
> buf.s_field(V4L2_FIELD_ANY);
> fail_on_test(buf.qbuf(node));
> if (v4l_type_is_video(buf.g_type()) && v4l_type_is_output(buf.g_type()))
>         fail_on_test(buf.g_field() == V4L2_FIELD_ANY);
> fail_on_test(buf.querybuf(node, i));
>
> // ......
>
> // LINE 1807 in v4l2-test-buffers.cpp, we will got the  failed here.
> // Since we need one RAW and one MDP0 buffer at least.
> // v4l2-test-buffers.cpp(1807): doioctl_fd(buf_req_fds[i],
> // MEDIA_REQUEST_IOC_QUEUE, 0)
> //      test Requests: FAIL
> fail_on_test(doioctl_fd(buf_req_fds[i], MEDIA_REQUEST_IOC_QUEUE, 0));
> =======================================================
>

Sounds like a limitation of the compliance test. Request API testing
there is still new and possibly just made for simple mem-to-mem
devices.

Hans, the driver always requires some buffers to be given, like the
raw frame input, while other, e.g. downscaled output, are optional.
Any ideas?

> > > +
> > > +static int mtk_dip_vb2_queue_setup(struct vb2_queue *vq,
> > > +                                  unsigned int *num_buffers,
> > > +                                  unsigned int *num_planes,
> > > +                                  unsigned int sizes[],
> > > +                                  struct device *alloc_devs[])
> > > +{
> > > +       struct mtk_dip_pipe *dip_pipe = vb2_get_drv_priv(vq);
> > > +       struct mtk_dip_video_device *node =
> > > +               mtk_dip_vbq_to_node(vq);
> > > +       struct device *dev = &dip_pipe->dip_dev->pdev->dev;
> > > +       struct device *buf_alloc_ctx;
> > > +
>
> [snip]
>
> > > +
> > > +       if (vq->type == V4L2_BUF_TYPE_META_CAPTURE ||
> > > +           vq->type == V4L2_BUF_TYPE_META_OUTPUT)
> > > +               size = fmt->fmt.meta.buffersize;
> > > +       else
> > > +               size = fmt->fmt.pix_mp.plane_fmt[0].sizeimage;
> > > +
> > > +       if (*num_planes) {
> > > +               if (sizes[0] < size) {
> > > +                       dev_dbg(dev, "%s:%s:%s: size error(user:%d, max:%d)\n",
> > > +                               __func__, dip_pipe->desc->name,
> > > +                               node->desc->name, sizes[0], size);
> > > +                       return -EINVAL;
> > > +               }
> >
> > I don't think this is an error. This is for handling VIDIOC_CREATE_BUFS,
> > which can allocate for any arbitrary format.
> >
> > Whether the size of the buffer is big enough for current format should be
> > checked in .buf_prepare callback.
>
> When executing V4L2 compliance test, we need to check this image size to
> pass the following q.create_bufs() test (LINE:709,
> v4l2-test-buffers.cpp).
>
> ========================================================
> node->g_fmt(fmt, q.g_type());
> //....
> fmt.s_height(fmt.g_height() / 2);
> for (unsigned p = 0; p < fmt.g_num_planes(); p++)
>         fmt.s_sizeimage(fmt.g_sizeimage(p) / 2, p);
>
> // LINE 709 in v4l2-test-buffers.cpp
> // It seems that the driver needs to return EINVAL when the buffer
> //size is smaller than the sizeimage required
>         fail_on_test(q.create_bufs(node, 1, &fmt) != EINVAL);
> ========================================================
>
> The kernel document has some similar description on VIDIOC_CREATE_BUFS.
>
> https://www.kernel.org/doc/html/latest/media/uapi/v4l/vidioc-create-bufs.html
>
> =======================================================
> Usually if the format.pix.sizeimage field is less than the minimum
> required for the given format, then an error will be returned since
> drivers will typically not allow this.
> =======================================================
>
> Should we check the image size of each plane here so that we can pass
> the test?

Note that "given format" there means the format field of
structv4l2_create_buffers, _not_ the currently active format. That's
really strange because we don't get that inside queue_setup.

Hans, how should we handle this in the driver? Right now we just call
vb2_create_bufs(), which doesn't care about anything else than
sizeimage. Do we need to implement our own .vidioc_create_bufs()
handler that validates the sizeimage wrt the other parts of the given
format before calling vb2_create_bufs()?

Another thing is that the spec isn't very precise on this, especially
given the "usually" and "typically" in the description quoted above.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
